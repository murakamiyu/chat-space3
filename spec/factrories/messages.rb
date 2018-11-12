FactoryBot.defined do
  factory :message do
    content Faker::Lorem.sentence
    name Faker::Name.last_name
    image File.open("#{Rails.root}/public/image/no_image.jpg")
    user
    group
  end	
end