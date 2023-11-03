50.times do 
  User.create (
    first_name: Faker::Name.first_name
    last_name: Faker::Name.last_name
    gender: Faker::Gender.binary_type
    email: Faker::Internet.email
    birthday: Faker::Date.birthday(min_age: 15, max_age: 75)
  )
end