# X-Platform (Twitter) Database Project

This project is a complete SQL database implementation that simulates the core features of X (formerly Twitter). The main focus is creating proper table relationships, applying essential data constraints, and simplifying repeated tasks using Stored Procedures.

---

##  Database Tables

The database consists of 5 main tables:

1. **Users**: Stores core authentication data (unique email and encrypted password).
2. **Profiles**: Stores public profile details like the username and bio (linked 1:1 with the Users table).
3. **Tweets**: Stores user posts with a strict 280-character limit constraint.
4. **Followers**: Manages follow relationships between users and prevents duplicate records.
5. **Likes**: Records user interactions on tweets and prevents liking the same tweet twice.

---

##  Key Features & Constraints

* **Cascading Deletes (`ON DELETE CASCADE`)**: If a user deletes their account, all their profile info, tweets, likes, and followers are automatically removed to keep the database clean.
* **Uniqueness Safeguards (`UNIQUE`)**: Emails and usernames are strictly protected against duplication to ensure unique digital identities.
* **Automatic Time Tracking (`TIMESTAMP`)**: System logs the exact time and date for new accounts and tweets automatically using the server's current time.

---

##  How to Run the Project and Test Procedures

To run this project, you just need any MySQL environment like MySQL Workbench or phpMyAdmin. You simply copy the SQL code from the `X_Platform_Database.sql` file and execute it in your client to build the entire database automatically. 

After running the script, you can immediately test the two stored procedures we built to handle multi-table operations. The first one is `createAccount` which registers a user and sets up their profile, and the second one is `User_Follow` which handles follow connections between usernames. You can run them using these simple commands:

```sql
-- Create a new user account and profile automatically
CALL createAccount('test@email.com', 'MyPassword123', 'my_username', 'Hello, this is my bio!');

-- Make a user follow another user using their handles
CALL User_Follow('my_username', 'another_user');
CALL User_Follow('my_username', 'another_user');
