
const formatNumber = function (num) {
  return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
}


const formatTopTen = function(arr) {
	
	// get top 10 or less
	
	len = arr.length < 10 ? arr.length : 10;
	
	output = "";
	
	for (i = 0; i < len; i++) {
		
		let amount = arr[i].amount;
		
		amount = parseFloat(amount).toFixed(2);
		
		amount = formatNumber(amount);
		
		output += "<tr><td>" + arr[i].name + "</td><td>$" + amount + "</td></tr>";
	}
	
	return output;
}

const extract = function(data) {
	
	let donors = [];
	
	if (data[0].records[0].Contributor == null) {
		return donors;
	}
	
	for (i = 0; i < 15; i++) {
		
		let donor = { 
			id: data[0].records[i].Contributor.id,
			name: data[0].records[i].Contributor.Contributor,
			amount: data[0].records[i].Total_$.Total_$
		};
		
		if (donor.name != "UNITEMIZED DONATIONS") {
			donors.push(donor);
		}
	}
	return donors;
}

const getData = function(stateCode, year, chamber) {
	
	return $.ajax({
        url: "https://api.followthemoney.org/?dt=1&s=" + stateCode + "&y=" + year + "&f-fc=1&c-exi=1&c-r-ot=" + chamber + "&gro=d-eid&APIKey=6e7869aa99597d5ea910a282e613600b&mode=json",
        type: "GET",
        dataType: "json"
    });
	
}


const combineMatched = function(arr) {
	
	len = arr.length;
	
	for (i = 0; i < len; i++) {
		
		for (j = i+ 1; j < len; j++){
			
			if (arr[i].id === arr[j].id) {
				
				arr[i].amount = ( parseFloat(arr[i].amount) + parseFloat(arr[j].amount) ).toString();
				
				arr.splice(j, 1);
				len--;
				i--;
				
			}
		}
	}
}


const getLastElection = function() {
	
	const current = new Date();
	let month = current.getMonth();
	let year = current.getFullYear();
	
	if (year % 2 == 1) {
		return year - 1;
	}
	
	if (month < 11) {
		return year - 2;
	}
	
	return year;
}



$(document).ready( function () {
	
	let donorList = [];
	
	const stateCode = $("#stateCode").text();
	
	let lastCongrElection = getLastElection();
	
	
	$.when (
		
		getData(stateCode, lastCongrElection - 2, "U"),
		getData(stateCode, lastCongrElection - 2, "L"),
		getData(stateCode, lastCongrElection, "U"),
		getData(stateCode, lastCongrElection, "L")
		
	).done(function(data1, data2, data3, data4) {

		
		let senate2016 = extract(data1);
		donorList = senate2016;
		
		let house2016 = extract(data2);
		donorList = donorList.concat(house2016);
		
		let senate2018 = extract(data3);
		donorList = donorList.concat(senate2018);
		
		let house2018 = extract(data4);
		donorList = donorList.concat(house2018);
		
		combineMatched(donorList);
		
		let insert = formatTopTen(donorList);
	    $(".donors-list").html(insert);
			
	}).fail(function (xhr, status, error) {
        console.log(error);
    });
	
});

