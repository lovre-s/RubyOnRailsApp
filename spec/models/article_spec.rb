require 'rails_helper'

RSpec.describe Article, type: :model do

  let(:article) { build(:article) }

  describe 'creation' do
    it 'checks that an article can be created' do
      expect{
        article_params = article
        expect { post :create, :article => article_params }.to change(Article, :count).by(1) 
      }
    end
  end

  describe 'updating' do
    it 'checks that an article title can be updated' do
      article.update(:title => "novi naslov")
      expect(Article.find_by_title("novi naslov")).to eq(article)
    end
  end

  describe 'deletion' do
    it 'checks that an article can be destroyed' do
      article.destroy
      expect(Article.count).to eq(0)
    end
  end


end
