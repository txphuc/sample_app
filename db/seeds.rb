User.create!(name: "Admin",
             email: "admin@gmail.com",
             password: "foobar",
             password_confirmation: "foobar",
             admin: true)
99.times do |n|
  name = Faker::Name.name
  email = "user-#{n+1}@gmail.com"
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password)
end
