#Test Users for Application
user1 = User.create :first_name => "Admin", :last_name =>"User", :email => "admin@example.com", :password => "user123", :role => 2
user2 = User.create :first_name => "Regular", :last_name =>"User", :email => "user@example.com", :password => "user123", :role => 1
user3 = User.create :first_name => "Normal", :last_name =>"User", :email => "user2@example.com", :password => "user123", :role => 1