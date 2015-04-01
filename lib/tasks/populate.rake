namespace :db do
  task :populate => :environment do
    User.delete_all

    _password = '123123123'

    10.times do
      User.create(
        email: Faker::Internet.free_email,
        password: _password,
        password_confirmation: _password
      )
    end
  end
end
