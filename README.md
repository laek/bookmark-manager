User story 1:
As an internet user,
So that I can visit my favourite websites easily
I would like to view my bookmarks

User story 2:
As an internet user,
SO that I can visit my favourite website easily
I would like to add a new bookmark

Database set up instructions:
1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query saved in the file 01_create_bookmarks_table.sql
5. Run the query saved in the file 02_add_title_to_bookmarks.sql

Test environment  set up instructions - create test database:
1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager_test;
3. Connect to the database using the pqsl command \c bookmark_manager-test;
4. Run the query saved in the file 01_create_bookmarks_table.sql
5. Run the query saved in the file 02_add_title_to_bookmarks.sql
