require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'creation' do
    it 'can be created' do
      article = Article.create(id: 1, title: "naslov", body: "tekst", user_id: 3)
      expect(article).to be_valid
    end
  end

  describe 'updating' do
    it 'checks that an article title can be updated' do
      @article = Article.create(id: 1, title: "naslov", body: "tekst", user_id: 3)
      @article.update(:title => "novi naslov")
      expect(Article.find_by_title("novi naslov")).to eq(@article)
    end
  end

  describe 'deletion' do
    it 'checks that an article can be destroyed' do
      @article = Article.create(id: 1, title: "naslov", body: "tekst", user_id: 3)
      @article.destroy
      expect(Article.count).to eq(0)
    end
  end


end
