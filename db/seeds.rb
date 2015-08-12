User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             city: "SF",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)
             
99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  city = "Oakland"
  password = "password"
  User.create!(name:  name,
               email: email,
               city: city,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
50.times do
  game_name = Faker::Lorem.sentence(5)
  issue_area = "Here's issue area"
  summary = "Here's summary"
  users.each { |user| user.games.create!(game_name: game_name, issue_area: issue_area, summary: summary) }
  games = Game.order(:created_at).take(6)
  5.times do
    content = ((0...8).map { (65 + rand(26)).chr }.join)
    games.each { |game| game.questions.create!(content: content) }
  end
end