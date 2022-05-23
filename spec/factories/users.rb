FactoryBot.define do
    factory :user do
      username { 'korisnik' }
      email  { 'example@mail.com' }
      password {'123456'}
      password_confirmation { '123456' }
      firstname { 'Joe' }
      lastname { 'Example' }
    end
  end 