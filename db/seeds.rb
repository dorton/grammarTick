# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


def create_me
  user = User.new
  user.first_name = "Brian"
  user.last_name = "Dorton"
  user.email = "brian.dorton@theironyard.com"
  user.password = "12345678"
  user.save!
  user
end

def create_others
  user = User.new
  user.first_name = Faker::Name.first_name
  user.last_name = Faker::Name.last_name
  user.email = Faker::Internet.email
  user.password = Faker::Internet.password(8)
  user.save!
  user
end

def create_ticks(user)
  tick = Tick.new
  tick.detail = Faker::ChuckNorris.fact
  tick.user = user
  tick.save!
  tick
end

me = create_me
  (10..300).to_a.sample.times do
    create_ticks(me)
  end

80.times do
  user = create_others
  (5..500).to_a.sample.times do
    create_ticks(user)
  end
end
