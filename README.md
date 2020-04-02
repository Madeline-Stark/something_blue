# Something Blue

User
username
email

Post
title
content
user_id

user has_many posts
post belongs_to user

Post
C
new => get '/posts/new'
create => post '/posts'

R
index => get '/posts'
show => get '/posts/:id'

U
edit => get '/posts/:id/edit'
update => patch '/posts/:id'

D
destroy => delete '/posts/:id'



User
- password_digest
- bcrypt
- has_secure_password

- signup
- log in
- log out
