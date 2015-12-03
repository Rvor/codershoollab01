# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do
    Photo.create(username: Faker::Internet.user_name, caption: Faker::Lorem.sentence, likes_count: Faker::Number.number(4), url: Faker::Avatar.image)
end


Photo.all.each do |photo|
      rand(10).times do 
              photo.comments << Comment.new(body:Faker::Lorem.sentence)
                  end
        end
