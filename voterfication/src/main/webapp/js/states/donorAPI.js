
const formatNumber = function (num) {
  return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
}


const formatName = function(name) {
	
	let firstLast = name.split(", ");
	let orderedName = name;
	if (firstLast.length > 1) {
		let temp = firstLast[0];
		firstLast[0] = firstLast[1];
		firstLast[1] = temp;
		orderedName = firstLast.join(" ");
	}
	
	let nameArray = orderedName.split(" ");
	
	for (j = 0; j < nameArray.length; j++) {
		
		let word;
		if (nameArray[j].charAt(0) == "(") {
			word = "(" + nameArray[j].charAt(1).toUpperCase() + nameArray[j].slice(2).toLowerCase();
		} else {
			word = nameArray[j].charAt(0).toUpperCase() + nameArray[j].slice(1).toLowerCase();
		}
		nameArray[j] =  word; 
	}
	
	return nameArray.join(" ");
}

const sortDonors = function(donor1, donor2) {
	
	let amount1 = parseFloat(donor1.amount);
	let amount2 = parseFloat(donor2.amount);
	
	return amount2 - amount1;
}


const getTopTen = function(arr) {
	
	// get top 10 or less
	
	len = arr.length < 10 ? arr.length : 10;
	
	arr.sort(function(a, b) { return sortDonors(a, b) });
	
	return arr.slice(0,len);
	
}


const format = function(arr) {
	
	output = "";
	
	for (i = 0; i < arr.length; i++) {
		
		let amount = arr[i].amount;
		
		amount = parseFloat(amount).toFixed(2);
		
		amount = formatNumber(amount);
		
		let name = arr[i].name;
		
		name = formatName(name);
		
		output += "<tr><td>" + name + "</td><td>$" + amount + "</td></tr>";
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
	
	const APIkey = "6e7869aa99597d5ea910a282e613600b";	// logomythy@gmail.com
//	const APIkey = "0c235eb1f322f05435f6e4caf3650512";	// kghawthorne@gmail.com
	
	return $.ajax({
        url: "https://api.followthemoney.org/?dt=1&s=" + stateCode + "&y=" + year + "&f-fc=1&c-exi=1&c-r-ot=" + chamber + 
        	"&gro=d-eid&APIKey=" + APIkey + "&mode=json",
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
				j--;
				
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

		
		let senate1 = extract(data1);
		donorList = senate1;
		
		let house1 = extract(data2);
		donorList = donorList.concat(house1);
		
		let senate2 = extract(data3);
		donorList = donorList.concat(senate2);
		
		let house2 = extract(data4);
		donorList = donorList.concat(house2);
		
		combineMatched(donorList);
		
		let insert = format(getTopTen(donorList));
	    $(".donors-list").html(insert);
			
	}).fail(function (xhr, status, error) {
        console.log(error);
    });
	
});

