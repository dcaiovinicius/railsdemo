require 'ffaker'

10.times do
  User.create do |user|
    user.email = FFaker::Internet.email
    user.password = '123456'
  end
end

10.times do |user_id|
  Friend.create do |friend|
    friend.user_id = user_id
    friend.first_name = FFaker::Name.name
    friend.email = FFaker::Internet.email
    friend.phone = FFaker::PhoneNumberBR.international_mobile_phone_number
    friend.description = FFaker::DizzleIpsum.phrase
  end
end
