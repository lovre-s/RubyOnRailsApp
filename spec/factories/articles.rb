FactoryBot.define do
    factory :article do
      title { 'Naslov' }
      body { 'Tekst' }
      user { build :user }
    end
  end 