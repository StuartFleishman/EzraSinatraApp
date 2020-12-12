ozzy = User.create(user_name: "Ozzy", email: "ozzy@gmail.com", password: "asdf12")
james = User.create(user_name: "James", email: "james@gmail.com", password: "ffff12")
tony = User.create(user_name: "Tony", email: "Mary@gmail.com", password: "232312")
sara = User.create(user_name: "Sara", email: "sarah@gmail.com", password: "you12")


ozzy.family_members.create(name:"stu", relationship: "brother", birthdate: "2010-10-20")
james.family_members.create(name:"rachel", relationship: "sister", birthdate: "1970-11-03")
tony.family_members.create(name:"charles", relationship: "dad", birthdate: "1965-10-20")
sara.family_members.create(name:"michelle", relationship: "mom", birthdate: "1951-03-20")