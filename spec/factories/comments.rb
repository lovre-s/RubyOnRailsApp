FactoryBot.define do
    factory :comment do
      body { 'komentar' }
      user_id {1}
      article_id {1}
    end
  end