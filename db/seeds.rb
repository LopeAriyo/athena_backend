User.create(:first_name => "Lope", 
    :last_name => "Ariyo", 
    :email => "lope.ariyo@faker.com", 
    :password => "Password1",
    :password_confirmation => "Password1")

User.create(:first_name => "Dana", 
    :last_name => "Lee", 
    :email => "lee.dana@faker.com",         
    :password => "Password2",
    :password_confirmation => "Password2")

User.create(:first_name => "Rose", 
    :last_name => "Nurse", 
    :email => "r.nurse@faker.com", 
    :password => "Password3",
    :password_confirmation => "Password3")

puts "seeded Users"

Cycle.create(:start_date => "01/01/2020", :cycle_length => 30, :period_length => 5, :user_id => 3)

puts "seeded User 3 Cycles"

Cycle.create(:start_date => "12/13/2019", :cycle_length => 29, :period_length => 4, :user_id => 2)
Cycle.create(:start_date => "01/11/2020", :cycle_length => 30, :period_length => 4, :user_id => 2)
Cycle.create(:start_date => "02/10/2020", :cycle_length => 31, :period_length => 5, :user_id => 2)
 

puts "seeded User 2 Cycles"

Cycle.create(:start_date => "09/14/2019", :cycle_length => 29, :period_length => 5, :user_id => 1)
Cycle.create(:start_date => "10/13/2019", :cycle_length => 28, :period_length => 4, :user_id => 1)
Cycle.create(:start_date => "11/10/2019", :cycle_length => 27, :period_length => 4, :user_id => 1)
Cycle.create(:start_date => "12/07/2019", :cycle_length => 29, :period_length => 5, :user_id => 1)
Cycle.create(:start_date => "01/05/2020", :cycle_length => 26, :period_length => 4, :user_id => 1)
Cycle.create(:start_date => "01/31/2020", :cycle_length => 0, :period_length => 4, :user_id => 1)

puts "seeded User 1 Cycles"

Tracker.create(:cycle_id => 5, :date => "01/31/2019", :intensity => 5, :collection => "tampon")
Tracker.create(:cycle_id => 5, :date => "02/01/2019", :intensity => 4, :collection => "tampon")
Tracker.create(:cycle_id => 5, :date => "02/02/2019", :intensity => 3, :collection => "pad")
Tracker.create(:cycle_id => 5, :date => "02/03/2019", :intensity => 2, :collection => "pad")
Tracker.create(:cycle_id => 5, :date => "02/04/2019", :intensity => 1, :collection => "liner")

puts "seeded Trackers for User 1 - Cycle 5"