Ukiyoe Design Note
---
Models

Articles 

* title 		string	
* content		text
* create_at	datetime
* last_edit	datetime
* status 		string
* like			integer
* ====
* belongs_to user
* belongs_to	category
* has_and_belongs_to_many tags
* has_many	comments

Comment

* content		text
* create_at	datetime
* ===
* belongs_to	article

User

* nickname	string
* email 		string
* password 	string
* profile 	string
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

