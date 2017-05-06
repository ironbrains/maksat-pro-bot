FactoryGirl.define do
  factory :user do
    telegram_id 1
    telegram_username 'some_username'
    jwt 'some jwt'
    current_screen 'start'
  end
end
