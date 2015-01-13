Ukiyoe Design Note
---
Models

Articles 

* title 		string	
* content		text
* create_at	datetime	default now
* last_edit	datetime	default now	
* status 		string		default "public"
* like			integer	default 0
* ====
* belongs_to user
* belongs_to	category
* has_and_belongs_to_many tags
* has_many	comments

Comment

* content		text
* create_at	datetime	default now
* ===
* belongs_to	article

User

* nickname	string
* email 		string
* password 	string
* profile 	string default "This user is too lazy to leave a word"
* ===
* has_many 	articles

Category

* name			string
* ===
* has_many	articles

tag

* name
* ===
* has_and_belongs_to_many articles

