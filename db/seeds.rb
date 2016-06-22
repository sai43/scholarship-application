#Test Users for Application
user1 = User.create :first_name => "Admin", :last_name =>"User", :email => "admin@example.com", :password => "user123", :role => "Admin"
user2 = User.create :first_name => "Regular", :last_name =>"User", :email => "user@example.com", :password => "user123", :role => "User"