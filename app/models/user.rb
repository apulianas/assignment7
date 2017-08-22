class User < ActiveRecord::Base
   
   has_one :accounts
   has_many :todo_lists

end
