#Requirement 2

1. Link user table with comments table
2. Added 2 migration script
a. create user table
b. create user_id foreign key in comments table
3. Added validation in emails.
4. Db seed 3 users: Alex 1, Stefan 2, Johnny 3
5. Each comment need select which user from db
6. Added display name for each comment
7. Screenshot in public/requirement-2.png

8. Added 1 migration script
a. create user_id foreign key in articles table
9. create new article require selection of author/users list
10. after creating, it will display author name
11. Screenshot in public/requirement-2(part b).png
12. Screenshot in public/requirement-2(part b - 2).png

#Requirement 3

1. Screenshot requirement-3a.png & requirement-3b.png
2. User able to search article authorname or title.

#Requirement 4
1. Gem 'kaminari' to support pagination
2. API response in json with data and message
3. Example response with 
http://127.0.0.1:3000/api/articles?page=1&per_page=1
(public/requirement-4a.png)

http://127.0.0.1:3000/api/articles?page=2&per_page=1
(public/requirement-4b.png)