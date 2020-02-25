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

Cycle.create(:start_date => "01/01/2020", :estimated_cycle_length => 30, :cycle_length => 30, :estimated_period_length => 5, :period_length => 5, :user_id => 3)

puts "seeded cycles for Rose Nurse"

Cycle.create(:start_date => "12/13/2019", :estimated_cycle_length => 30, :cycle_length => 29, :estimated_period_length => 4, :period_length => 4, :user_id => 2)
Cycle.create(:start_date => "01/11/2020", :estimated_cycle_length => 30, :cycle_length => 30, :estimated_period_length => 4, :period_length => 4, :user_id => 2)
Cycle.create(:start_date => "02/10/2020", :estimated_cycle_length => 30, :cycle_length => 31, :estimated_period_length => 4, :period_length => 5, :user_id => 2)
 

puts "seeded cycles for Dana Lee"

Cycle.create(:start_date => "09/14/2019", :estimated_cycle_length => 28,  :cycle_length => 29, :estimated_period_length => 4, :period_length => 5, :user_id => 1)
Cycle.create(:start_date => "10/13/2019", :estimated_cycle_length => 28, :cycle_length => 28, :estimated_period_length => 4, :period_length => 4, :user_id => 1)
Cycle.create(:start_date => "11/10/2019", :estimated_cycle_length => 28, :cycle_length => 27, :estimated_period_length => 4, :period_length => 4, :user_id => 1)
Cycle.create(:start_date => "12/07/2019", :estimated_cycle_length => 28, :cycle_length => 29, :estimated_period_length => 4, :period_length => 5, :user_id => 1)
Cycle.create(:start_date => "01/05/2020", :estimated_cycle_length => 28, :cycle_length => 26, :estimated_period_length => 4, :period_length => 4, :user_id => 1)
Cycle.create(:start_date => "01/31/2020", :estimated_cycle_length => 28, :cycle_length => nil, :estimated_period_length => 4, :period_length => nil, :user_id => 1)

puts "seeded cycles for Lope Ariyo"

# Journal was formally tracker
Journal.create(:category => "Period")
Journal.create(:category => "Off-Period")
Journal.create(:category => "Body Measurement")
Journal.create(:category => "Body Conditions")
Journal.create(:category => "Diet")
Journal.create(:category => "Vitality")
Journal.create(:category => "Activity")
Journal.create(:category => "Medical")
puts "seeded Journals"

CycleJournal.create(:cycle_id => 7, :journal_id => 1 )
Entry.create(:cycle_journal_id => 1, :date => "11/10/2019", :entry_details => {intensity: "Heavy", collection: "tampon"}.to_json)
Entry.create(:cycle_journal_id => 1, :date => "11/11/2019", :entry_details => {intensity: "Heavy/Medium", collection: "tampon"}.to_json)
Entry.create(:cycle_journal_id => 1, :date => "11/12/2019", :entry_details => {intensity: "Medium", collection: "pad"}.to_json)
Entry.create(:cycle_journal_id => 1, :date => "11/13/2019", :entry_details => {intensity: "Medium/Light", collection: "pad"}.to_json)
Entry.create(:cycle_journal_id => 1, :date => "11/14/2019", :entry_details => {intensity: "Light", collection: "liner"}.to_json)
# Log.create(:user_id => 1, :journal_id => 1, :date => "01/31/2019", :entry_details => {}.to_json)
# JSON.parse(log.details)
puts "seeded Entries for Cycle 7 Journal 1"

CycleJournal.create(:cycle_id => 7, :journal_id => 6 )
Entry.create(:cycle_journal_id => 2, :date => "11/10/2019", :entry_details => {mood: "Awful", energy: "Exhausted", focus: "Distracted", motivation: "Unmotivated", stress: "Calm" , productivity: "Unproductive", social: "withdrawn"}.to_json)
Entry.create(:cycle_journal_id => 2, :date => "11/12/2019", :entry_details => {mood: "Okay", energy: "Tired", focus: "Focused", motivation: "Unmotivated", stress: "Stressed" , productivity: "Unproductive", social: "withdrawn"}.to_json)
Entry.create(:cycle_journal_id => 2, :date => "11/14/2019", :entry_details => {mood: "Okay", energy: "Neutural", focus: "Neutural", motivation: "Neutural", stress: "Calm" , productivity: "Productive", social: "social"}.to_json)
Entry.create(:cycle_journal_id => 2, :date => "11/16/2019", :entry_details => {mood: "Great", energy: "Energetic", focus: "Distracted", motivation: "Motivated", stress: "Calm" , productivity: "Unproductive", social: "social"}.to_json)
Entry.create(:cycle_journal_id => 2, :date => "11/18/2019", :entry_details => {mood: "Okay", energy: "Energetic", focus: "Focused", motivation: "Motivated", stress: "Calm" , productivity: "Productive", social: "social"}.to_json)
puts "seeded Entries for Cycle 7 Journal 6"

CycleJournal.create(:cycle_id => 7, :journal_id => 5 )
Entry.create(:cycle_journal_id => 3, :date => "11/10/2019", :entry_details => {hunger: "Extremely Hungry", craving: "Carby", hydration: "500ml", digestion: "bloated", stool: "diarrhea" }.to_json)
Entry.create(:cycle_journal_id => 3, :date => "11/12/2019", :entry_details => {hunger: "Hungry", craving: "Salty", hydration: "1000ml", digestion: "gassy", stool: "normal" }.to_json)
Entry.create(:cycle_journal_id => 3, :date => "11/13/2019", :entry_details => {hunger: "Fine", craving: "Salty", hydration: "1500ml" }.to_json)
Entry.create(:cycle_journal_id => 3, :date => "11/17/2019", :entry_details => {hunger: "Not Hungry", craving: "None", hydration: "2000ml" }.to_json)
Entry.create(:cycle_journal_id => 3, :date => "11/18/2019", :entry_details => {hunger: "Fine", craving: "Sweet", hydration: "2000ml"}.to_json)
puts "seeded Entries for Cycle 7 Journal 5"

CycleJournal.create(:cycle_id => 8, :journal_id => 1 )
Entry.create(:cycle_journal_id => 4, :date => "12/07/2019", :entry_details => {intensity: "Heavy", collection: "tampon"}.to_json)
Entry.create(:cycle_journal_id => 4, :date => "12/08/2019", :entry_details => {intensity: "Heavy/Medium", collection: "tampon"}.to_json)
Entry.create(:cycle_journal_id => 4, :date => "12/09/2019", :entry_details => {intensity: "Medium", collection: "pad"}.to_json)
Entry.create(:cycle_journal_id => 4, :date => "12/10/2019", :entry_details => {intensity: "Medium/Light", collection: "pad"}.to_json)
Entry.create(:cycle_journal_id => 4, :date => "12/11/2019", :entry_details => {intensity: "Light", collection: "liner"}.to_json)
puts "seeded Entries for Cycle 8 Journal 1"

CycleJournal.create(:cycle_id => 8, :journal_id => 6 )
Entry.create(:cycle_journal_id => 5, :date => "12/07/2019", :entry_details => {mood: "Awful", energy: "Exhausted", focus: "Distracted", motivation: "Unmotivated", stress: "Calm" , productivity: "Unproductive", social: "withdrawn"}.to_json)
Entry.create(:cycle_journal_id => 5, :date => "12/10/2019", :entry_details => {mood: "Okay", energy: "Tired", focus: "Focused", motivation: "Unmotivated", stress: "Stressed" , productivity: "Unproductive", social: "withdrawn"}.to_json)
Entry.create(:cycle_journal_id => 5, :date => "12/13/2019", :entry_details => {mood: "Okay", energy: "Neutural", focus: "Neutural", motivation: "Neutural", stress: "Calm" , productivity: "Productive", social: "social"}.to_json)
Entry.create(:cycle_journal_id => 5, :date => "12/16/2019", :entry_details => {mood: "Great", energy: "Energetic", focus: "Distracted", motivation: "Motivated", stress: "Calm" , productivity: "Unproductive", social: "social"}.to_json)
Entry.create(:cycle_journal_id => 5, :date => "12/19/2019", :entry_details => {mood: "Okay", energy: "Energetic", focus: "Focused", motivation: "Motivated", stress: "Calm" , productivity: "Productive", social: "social"}.to_json)
puts "seeded Entries for Cycle 8 Journal 6"

CycleJournal.create(:cycle_id => 8, :journal_id => 5 )
Entry.create(:cycle_journal_id => 6, :date => "12/07/2019", :entry_details => {hunger: "Extremely Hungry", craving: "Carby", hydration: "500ml", digestion: "bloated", stool: "diarrhea" }.to_json)
Entry.create(:cycle_journal_id => 6, :date => "12/09/2019", :entry_details => {hunger: "Hungry", craving: "Salty", hydration: "1000ml", digestion: "gassy", stool: "normal" }.to_json)
Entry.create(:cycle_journal_id => 6, :date => "12/14/2019", :entry_details => {hunger: "Fine", craving: "Salty", hydration: "1500ml" }.to_json)
Entry.create(:cycle_journal_id => 6, :date => "12/15/2019", :entry_details => {hunger: "Not Hungry", craving: "None", hydration: "2000ml" }.to_json)
Entry.create(:cycle_journal_id => 6, :date => "12/19/2019", :entry_details => {hunger: "Fine", craving: "Sweet", hydration: "2000ml"}.to_json)
puts "seeded Entries for Cycle 8  Journal 5"

CycleJournal.create(:cycle_id => 9, :journal_id => 1 )
Entry.create(:cycle_journal_id => 7, :date => "01/05/2019", :entry_details => {intensity: "Heavy", collection: "tampon"}.to_json)
Entry.create(:cycle_journal_id => 7, :date => "01/06/2019", :entry_details => {intensity: "Heavy/Medium", collection: "tampon"}.to_json)
Entry.create(:cycle_journal_id => 7, :date => "01/07/2019", :entry_details => {intensity: "Medium", collection: "pad"}.to_json)
Entry.create(:cycle_journal_id => 7, :date => "01/08/2019", :entry_details => {intensity: "Medium/Light", collection: "pad"}.to_json)
Entry.create(:cycle_journal_id => 7, :date => "01/09/2019", :entry_details => {intensity: "Light", collection: "liner"}.to_json)
puts "seeded Entries for Cycle 9 Journal 1"


CycleJournal.create(:cycle_id => 9, :journal_id => 6 )
Entry.create(:cycle_journal_id => 8, :date => "01/05/2019", :entry_details => {mood: "Awful", energy: "Exhausted", focus: "Distracted", motivation: "Unmotivated", stress: "Calm" , productivity: "Unproductive", social: "withdrawn"}.to_json)
Entry.create(:cycle_journal_id => 8, :date => "01/09/2019", :entry_details => {mood: "Okay", energy: "Tired", focus: "Focused", motivation: "Unmotivated", stress: "Stressed" , productivity: "Unproductive", social: "withdrawn"}.to_json)
Entry.create(:cycle_journal_id => 8, :date => "01/13/2019", :entry_details => {mood: "Okay", energy: "Neutural", focus: "Neutural", motivation: "Neutural", stress: "Calm" , productivity: "Productive", social: "social"}.to_json)
Entry.create(:cycle_journal_id => 8, :date => "01/17/2019", :entry_details => {mood: "Great", energy: "Energetic", focus: "Distracted", motivation: "Motivated", stress: "Calm" , productivity: "Unproductive", social: "social"}.to_json)
Entry.create(:cycle_journal_id => 8, :date => "01/21/2019", :entry_details => {mood: "Okay", energy: "Energetic", focus: "Focused", motivation: "Motivated", stress: "Calm" , productivity: "Productive", social: "social"}.to_json)
puts "seeded Entries for Cycle 9 Journal 6"

CycleJournal.create(:cycle_id => 9, :journal_id => 5 )
Entry.create(:cycle_journal_id => 9, :date => "01/05/2019", :entry_details => {hunger: "Extremely Hungry", craving: "Carby", hydration: "500ml", digestion: "bloated", stool: "diarrhea" }.to_json)
Entry.create(:cycle_journal_id => 9, :date => "01/06/2019", :entry_details => {hunger: "Hungry", craving: "Salty", hydration: "1000ml", digestion: "gassy", stool: "normal" }.to_json)
Entry.create(:cycle_journal_id => 9, :date => "01/09/2019", :entry_details => {hunger: "Fine", craving: "Salty", hydration: "1500ml" }.to_json)
puts "seeded Entries for Cycle 9 Journal 5"

CycleJournal.create(:cycle_id => 10, :journal_id => 1 )
Entry.create(:cycle_journal_id => 10, :date => "01/31/2019", :entry_details => {intensity: "Heavy", collection: "tampon"}.to_json)
Entry.create(:cycle_journal_id => 10, :date => "02/01/2019", :entry_details => {intensity: "Heavy/Medium", collection: "tampon"}.to_json)
Entry.create(:cycle_journal_id => 10, :date => "02/02/2019", :entry_details => {intensity: "Medium", collection: "pad"}.to_json)
Entry.create(:cycle_journal_id => 10, :date => "02/03/2019", :entry_details => {intensity: "Medium/Light", collection: "pad"}.to_json)
Entry.create(:cycle_journal_id => 10, :date => "02/04/2019", :entry_details => {intensity: "Light", collection: "liner"}.to_json)
# Log.create(:user_id => 1, :journal_id => 1, :date => "01/31/2019", :entry_details => {}.to_json)
# JSON.parse(log.details)
puts "seeded Entries for Cycle 10 Journal 1"

CycleJournal.create(:cycle_id => 10, :journal_id => 6 )
Entry.create(:cycle_journal_id => 11, :date => "01/31/2019", :entry_details => {mood: "Awful", energy: "Exhausted", focus: "Distracted", motivation: "Unmotivated", stress: "Calm" , productivity: "Unproductive", social: "withdrawn"}.to_json)
Entry.create(:cycle_journal_id => 11, :date => "02/02/2019", :entry_details => {mood: "Okay", energy: "Tired", focus: "Focused", motivation: "Unmotivated", stress: "Stressed" , productivity: "Unproductive", social: "withdrawn"}.to_json)
Entry.create(:cycle_journal_id => 11, :date => "02/06/2019", :entry_details => {mood: "Okay", energy: "Neutural", focus: "Neutural", motivation: "Neutural", stress: "Calm" , productivity: "Productive", social: "social"}.to_json)
Entry.create(:cycle_journal_id => 11, :date => "02/08/2019", :entry_details => {mood: "Great", energy: "Energetic", focus: "Distracted", motivation: "Motivated", stress: "Calm" , productivity: "Unproductive", social: "social"}.to_json)
Entry.create(:cycle_journal_id => 11, :date => "02/12/2019", :entry_details => {mood: "Okay", energy: "Energetic", focus: "Focused", motivation: "Motivated", stress: "Calm" , productivity: "Productive", social: "social"}.to_json)
Entry.create(:cycle_journal_id => 11, :date => "02/14/2019", :entry_details => {mood: "Okay", energy: "Tired", focus: "Focused", motivation: "Unmotivated", stress: "Stressed" , productivity: "Unproductive", social: "withdrawn"}.to_json)
Entry.create(:cycle_journal_id => 11, :date => "02/20/2019", :entry_details => {mood: "Okay", energy: "Neutural", focus: "Neutural", motivation: "Neutural", stress: "Calm" , productivity: "Productive", social: "social"}.to_json)
Entry.create(:cycle_journal_id => 11, :date => "02/22/2019", :entry_details => {mood: "Great", energy: "Energetic", focus: "Distracted", motivation: "Motivated", stress: "Calm" , productivity: "Unproductive", social: "social"}.to_json)
Entry.create(:cycle_journal_id => 11, :date => "02/25/2019", :entry_details => {mood: "Okay", energy: "Energetic", focus: "Focused", motivation: "Motivated", stress: "Calm" , productivity: "Productive", social: "social"}.to_json)
puts "seeded Entries for Cycle 10 Journal 6"

CycleJournal.create(:cycle_id => 10, :journal_id => 5 )
Entry.create(:cycle_journal_id => 12, :date => "01/31/2019", :entry_details => {hunger: "Extremely Hungry", craving: "Carby", hydration: "500ml", digestion: "bloated", stool: "diarrhea" }.to_json)
Entry.create(:cycle_journal_id => 12, :date => "02/02/2019", :entry_details => {hunger: "Hungry", craving: "Salty", hydration: "1000ml", digestion: "gassy", stool: "normal" }.to_json)
Entry.create(:cycle_journal_id => 12, :date => "02/22/2019", :entry_details => {hunger: "Fine", craving: "None", hydration: "2000ml" }.to_json)
Entry.create(:cycle_journal_id => 12, :date => "02/23/2019", :entry_details => {hunger: "Fine", craving: "Sweet", hydration: "2000ml"}.to_json)
puts "seeded Entries for Cycle 10 Journal 5"

CycleJournal.create(:cycle_id => 10, :journal_id => 8 )
Entry.create(:cycle_journal_id => 13, :date => "02/22/2019", :entry_details => {test: "no"}.to_json)
Entry.create(:cycle_journal_id => 13, :date => "02/25/2019", :entry_details => {test: "no"}.to_json)
puts "seeded Entries for Cycle 10 Journal 8"

puts "seeded Cycle Journals for Cycle 7, 8, 9, 10 all with Journals 1, 6 and 5 (belongs to Lope Ariyo) "

Question.create(:journal_id => 1, :prompt => "How was your flow?", :key => "intensity")
Option.create(:question_id => 1, :answer => "Light")
Option.create(:question_id => 1, :answer => "Light Medium")
Option.create(:question_id => 1, :answer => "Medium")
Option.create(:question_id => 1, :answer => "Heavy Medium ")
Option.create(:question_id => 1, :answer => "Heavy")

Question.create(:journal_id => 1, :prompt => "What collection method did you use?", :key => "collection" )
Option.create(:question_id => 2, :answer => "Tampon")
Option.create(:question_id => 2, :answer => "Pad")
Option.create(:question_id => 2, :answer => "Menstural Cup")
Option.create(:question_id => 2, :answer => "Menstural Disc")
Option.create(:question_id => 2, :answer => "Other")

puts "seeded Period Questions & Options"

Question.create(:journal_id => 2, :prompt => "Any spotting?", :key => "spotting" )
Option.create(:question_id => 3, :answer => "Yes")
Option.create(:question_id => 3, :answer => "No")

Question.create(:journal_id => 2, :prompt => "Notice anything about your cervical mucus?", :key => "cervical mucus"  )
Option.create(:question_id => 4, :answer => "Sticky")
Option.create(:question_id => 4, :answer => "Creamy")
Option.create(:question_id => 4, :answer => "Egg_White")
Option.create(:question_id => 4, :answer => "Watery")
Option.create(:question_id => 4, :answer => "Unusual")

puts "seeded Off-Period Questions & Options"

Question.create(:journal_id => 3, :prompt => "What's your temperature?", :key => "temperature" )

Question.create(:journal_id => 3, :prompt => "What's your weight?", :key => "weight"  )

puts "seeded Body Measurement Questions"

Question.create(:journal_id => 4, :prompt => "How's your skin feeling?", :key => "skin" )
Option.create(:question_id => 7, :answer => "Normal")
Option.create(:question_id => 7, :answer => "Sensitive")
Option.create(:question_id => 7, :answer => "Dry")
Option.create(:question_id => 7, :answer => "Oily")
Option.create(:question_id => 7, :answer => "Acne")
Option.create(:question_id => 7, :answer => "Combination")

Question.create(:journal_id => 4, :prompt => "How's your hair feeling?", :key => "hair" )
Option.create(:question_id => 8, :answer => "Normal")
Option.create(:question_id => 8, :answer => "Dry")
Option.create(:question_id => 8, :answer => "Oily")

Question.create(:journal_id => 4, :prompt => "Any pain?", :key => "pain" )
Option.create(:question_id => 9, :answer => "Cramps")
Option.create(:question_id => 9, :answer => "Tender Breast")
Option.create(:question_id => 9, :answer => "Headache")
Option.create(:question_id => 9, :answer => "Backache")
Option.create(:question_id => 9, :answer => "Hot Flashes")
Option.create(:question_id => 9, :answer => "Swelling")
Option.create(:question_id => 9, :answer => "Ovulation Pain ")

puts "seeded Body Condition Questions"

Question.create(:journal_id => 5, :prompt => "How were your hunger levels?", :key => "hunger" )
Option.create(:question_id => 10, :answer => "Extremely Hungry")
Option.create(:question_id => 10, :answer => "Hungry")
Option.create(:question_id => 10, :answer => "Normal")
Option.create(:question_id => 10, :answer => "Not Hungry")

Question.create(:journal_id =>  5, :prompt => "Did you have any cravings", :key => "craving"  )
Option.create(:question_id => 11, :answer => "Sweet Things")
Option.create(:question_id => 11, :answer => "Salty Things")
Option.create(:question_id => 11, :answer => "Carby Things")
Option.create(:question_id => 11, :answer => "Chocolate")
Option.create(:question_id => 11, :answer => "Other")

Question.create(:journal_id => 5, :prompt => "How much water did you drink?", :key => "hydration" )

Question.create(:journal_id => 5, :prompt => "How's your digestion?", :key => "digestion" )
Option.create(:question_id => 13, :answer => "Great")
Option.create(:question_id => 13, :answer => "Bloated")
Option.create(:question_id => 13, :answer => "Gassy")
Option.create(:question_id => 13, :answer => "Nauseated")

Question.create(:journal_id => 5, :prompt => "How's your poop?", :key => "stool" )
Option.create(:question_id => 14, :answer => "Great")
Option.create(:question_id => 14, :answer => "Normal")
Option.create(:question_id => 14, :answer => "Contispated")
Option.create(:question_id => 14, :answer => "Diarrhea")


puts "seeded Diet Questions"

Question.create(:journal_id => 6, :prompt => "How's your mood?", :key => "mood" )
Option.create(:question_id => 15, :answer => "Great")
Option.create(:question_id => 15, :answer => "Pretty Good")
Option.create(:question_id => 15, :answer => "Okay")
Option.create(:question_id => 15, :answer => "Not So Good")
Option.create(:question_id => 15, :answer => "Awful")

Question.create(:journal_id => 6, :prompt => "How's your energy?", :key => "energy" )
Option.create(:question_id => 16, :answer => "Energetic")
Option.create(:question_id => 16, :answer => "Excited")
Option.create(:question_id => 16, :answer => "Neutural")
Option.create(:question_id => 16, :answer => "Tired")
Option.create(:question_id => 16, :answer => "Exhausted")

Question.create(:journal_id => 6, :prompt => "How's your focus?", :key => "focus" )
Option.create(:question_id => 17, :answer => "Extremely Focused")
Option.create(:question_id => 17, :answer => "Focused")
Option.create(:question_id => 17, :answer => "Distracted")
Option.create(:question_id => 17, :answer => "Extremely Distracted")

Question.create(:journal_id => 6, :prompt => "Feeling any stress?", :key => "stress" )
Option.create(:question_id => 18, :answer => "Calm")
Option.create(:question_id => 18, :answer => "Stressed")

Question.create(:journal_id => 6, :prompt => "How's your motivation?", :key => "motivation" )
Option.create(:question_id => 19, :answer => "Motivated")
Option.create(:question_id => 19, :answer => "Unmotivated")

Question.create(:journal_id => 6, :prompt => "How's your productivity?", :key => "productivity" )
Option.create(:question_id => 20, :answer => "Productive")
Option.create(:question_id => 20, :answer => "Unproductive")

Question.create(:journal_id => 6, :prompt => "How did you feel around others?", :key => "social" )
Option.create(:question_id => 21, :answer => "Social")
Option.create(:question_id => 21, :answer => "Withdrawn")
puts "seeded Vitality Questions"

Question.create(:journal_id => 7, :prompt => "How much sleep did you get?", :key => "sleep" )

Question.create(:journal_id => 7, :prompt => "Did you exercise?", :key => "exercise" )
Option.create(:question_id => 23, :answer => "Yes")
Option.create(:question_id => 23, :answer => "No")

Question.create(:journal_id => 7, :prompt => "How's your sex drive?", :key => "drive" )
Option.create(:question_id => 24, :answer => "High")
Option.create(:question_id => 24, :answer => "Medium")
Option.create(:question_id => 24, :answer => "Low")

Question.create(:journal_id => 7, :prompt => "Did you have sex ?", :key => "sex" )
Option.create(:question_id => 25, :answer => "No")
Option.create(:question_id => 25, :answer => "Protected")
Option.create(:question_id => 25, :answer => "Unprotected")

puts "seeded Activity Questions"

Question.create(:journal_id => 7, :prompt => "Did you take a test today", :key => "test" )
Option.create(:question_id => 26, :answer => "Yes")
Option.create(:question_id => 26, :answer => "No")

Question.create(:journal_id => 7, :prompt => "What test did you take", :key => "test_type" )
Option.create(:question_id => 27, :answer => "Pregnancy")
Option.create(:question_id => 27, :answer => "Ovulation")

Question.create(:journal_id => 7, :prompt => "What was the result?", :key => "result" )
Option.create(:question_id => 28, :answer => "Positive")
Option.create(:question_id => 28, :answer => "Negative")

puts "seeded Reproduction Questions"




