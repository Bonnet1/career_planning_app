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