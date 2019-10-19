User.create!(name:  "Example User",
             email: "example@fiftybackwards.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

9.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@fiftybackwards.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

users = User.order(:end_date).take(6)
12.times do
  organization = Faker::Lorem.sentence(2)
  role = Faker::Lorem.sentence(4)
  details = Faker::Lorem.sentence(8)
  users.each { |user| user.actual_roles.create!(organization: organization, role: role, details: details) }
end