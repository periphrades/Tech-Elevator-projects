# Voterfication Project
(Voter Involvement Project)
## Database

Inside the `<project-root>/database/` directory you will find an executable Bash script (`.sh` file) and several SQL scripts (`.sql` files). These can be used to build a PostgreSQL database for the project. From a terminal session, simply execute the following commands:

```
cd <project-root>/database/
./create-capstone-db.sh
```

## Start-up

The database initially includes one admin:

```
user_name: Administrator
password: Alpha.Omega.Bravo.Charlie
```

After logging in as an admin, go to the `"Admin Page"` link in the navbar.  On that page, click the `Get Data` button.  This will load the congressional data from an API. The program will check the date and submit a request for the current congress at any time in the future. The `Get Data` button will also load example townhall information, which is sample data only.


## Political Donations

The "Top Donors" item on each state's page is loaded from a different API.  This data could have been retrieved like the congressional data above and stored in the database by Java, but it was implemented in JavaScript instead as a learning exercise.  The API does have time limits on the number of responses that it will provide to a given API key. If the API does not respond, the application will display sample data.


## Logged-in user
A logged-in `user` may submit questions to be asked of a given Member of Congress; questions may also be submitted for a townhall event at which Members of Congress may be present.

## Admin
An `admin` can modify or delete any submitted question on the `"All Posted Questions"` page.
An `admin` can also modify or add (local contact info) to the Members of Congress information provided by the API, by clicking a button on a state's page, `<Edit Congressional data for this page>`.


