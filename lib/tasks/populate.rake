namespace :db do
  task :populate => :environment do
    User.delete_all
    Photo.delete_all

    _password = '123123123'

    10.times do
      User.create!(
        email: Faker::Internet.free_email,
        password: _password,
        password_confirmation: _password
      )
    end

    users = User.all

    dir_img = File.join(Rails.root, 'lib', 'tasks', 'images')
    images  = Dir.glob("#{dir_img}/*.jpg").collect do |image|
      File.open(image)
    end

    30.times do
      Photo.create!(
        user: users.sample,
        title: Faker::Lorem.sentence,
        description: Faker::Lorem.paragraphs(3).join("\n"),
        permalink: "http://www.insignia4u.com",
        asset: images.sample
      )
    end
  end
end
