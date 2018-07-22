# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ["Lessons", "Gossip", "Class Management"].each{|n| Category.find_or_create_by(name: n)}

# [{first_name: "Jim", last_name: "Guy"}, {first_name: "Jane", last_name: "Doe"}].each do |p|
#     User.create!(
#         first_name: p[:first_name], 
#         last_name: p[:last_name], 
#         email: "#{p[:first_name]}#{p[:last_name]}@email.com", 
#         password: "password"
#     )
# end

# 2.times do |i|
#         User.create!(
#         first_name: "User #{i}", 
#         last_name: "User #{i}", 
#         email: "user#{i}@gmail.com", 
#         password: "password"
#     )

# end

# ["Meeting1", "Meeting2", "Meeting3"].each do |event_name|
#     Event.create(
#         title: "event_name", 
#         description: "something goes here", 
#         address: "123 NW bryan st, Miami, FL 33062",
#         weekly: true, 
#         monthly: false, 
#         start: "13:00", 
#         end: "15:00"
#         )
# end

# Event.all.each do |e|
#     5.times do |n|
#         EventMeeting.create!(
#             event: e,
#             name: e.name,
#             start: e.start,
#             end: e.end
#         )
#         # date missing just realized
#     end
#     Category.all.each{|c| EventCategory.create(event_id: e, category_id: c) if [true,false].sample}
# end

# User.all.each do |u|
#     EventMeeting.all.each do |em|
#         if [true,false].sample
#             EventRsvp.create(event_meeting_id: em, user_id: u, coming: [true, false, nil].sample)
#         end
#         if [true, false].sample
#             EventFavorite.create(event_meeting_id: em, user_id: u)
#         end
#     end
# end
User.destroy_all
1000.times do |i|
            User.create!([{
            first_name: Faker::Name.first_name , 
            last_name: Faker::Name.last_name, 
            email: Faker::Internet.email, 
            password: "password"
             }] )
end
    
