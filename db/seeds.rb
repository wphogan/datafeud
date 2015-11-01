User.create!(name:  "DataCenter",
             email: "hogan.wp@gmail.com",
             password:              "qwerty",
             password_confirmation: "qwerty",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  "DataCenter",
             email: "info@datacenter.org",
             password:              "l00selips",
             password_confirmation: "l00selips",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)
             

# users = User.order(:created_at).take(6)
# 50.times do
#   game_name = Faker::Lorem.sentence(5)
#   issue_area = "Here's issue area"
#   summary = "Here's summary"
#   users.each { |user| user.games.create!(game_name: game_name, issue_area: issue_area, summary: summary) }
#   games = Game.order(:created_at).take(6)
#   5.times do
#     content = ((0...8).map { (65 + rand(26)).chr }.join)
#     games.each { |game| game.questions.create!(content: content) }
#   end
# end