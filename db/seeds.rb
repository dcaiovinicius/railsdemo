require 'ffaker'

10.times do
  Friend.create do |friend|
    friend.first_name = FFaker::Name.name
    friend.email = FFaker::Internet.email
    friend.phone = FFaker::PhoneNumberBR.international_mobile_phone_number
    friend.description = FFaker::DizzleIpsum.phrase
  end
end
