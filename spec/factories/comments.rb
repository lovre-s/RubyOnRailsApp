FactoryBot.define do
    factory :comment do
      body { 'komentar' }
      user { build :user }
      article { build :article }
    end
  end