User.destroy_all

User.create [
   { login: "User0", password: "Password0" },
   { login: "User1", password: "Password1" },
   { login: "User2", password: "Password2" },
   { login: "User3", password: "Password3" },
   { login: "User4", password: "Password4" },
   { login: "User5", password: "Password5" },
   { login: "User6", password: "Password6" },
   { login: "User7", password: "Password7" },
   { login: "User8", password: "Password8" },
   { login: "User9", password: "Password9" }
   { login: "Matt", password: "abc123" }
   { login: "Tim", password: "abc123" }
]

Account.destroy_all

Account.create [
   { gender: "male", age: 34, first_name: "Ronald", last_name: "McClain" },
   { gender: "male", age: 70, first_name: "Charles", last_name: "Bristol" },
   { gender: "male", age: 72, first_name: "Raymond", last_name: "Oliver" },
   { gender: "male", age: 47, first_name: "Thomas", last_name: "Tilton" },
   { gender: "male", age: 20, first_name: "Todd", last_name: "Greenstein" },
   { gender: "female", age: 63, first_name: "Joyce", last_name: "Solomon" },
   { gender: "female", age: 24, first_name: "Marisa", last_name: "Nice" },
   { gender: "female", age: 27, first_name: "Betty", last_name: "Fair" },
   { gender: "female", age: 66, first_name: "Patricia", last_name: "Montano" },
   { gender: "female", age: 51, first_name: "Reva", last_name: "Goff" }
]


TodoList.destroy_all
TodoList.create! [
   { list_name: "Go to the target", due_date: "09/15/2017" },
   { list_name: "Go to the mall", due_date: "09/21/2017" },
   { list_name: "Go to the mall", due_date: "09/31/2017" },
   { list_name: "Go buy clothes", due_date: "07/31/2017" },
   { list_name: "Go grocery shopping", due_date: "07/31/2017" },
   { list_name: "Go to the gym", due_date: "08/03/2017" }
]

item = TodoList.find_by due_date: "09/15/2017"
item.todo_items.create! [
   {due_date: "09/15/2017", task_title: "Buy socks", description: "Buy socks"}
]


Tag.create [
   {tag_name: "Daily"},
   {tag_name: "Weekly"}
]
