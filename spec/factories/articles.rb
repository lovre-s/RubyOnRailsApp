FactoryBot.define do
    factory :article do
      title { 'Naslov' }
      body { 'Tekst' }
      user_id {1}
    end
  end 