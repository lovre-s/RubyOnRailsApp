require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  let(:article) { build(:article) }

    describe 'create' do
        it 'successfully creates a new article' do
          expect{
            article_params = article
            expect { post :create, :article => article_params }.to change(Article, :count).by(1) 
          }
        end
    end

    describe 'updating' do
      it 'successfully updates an article' do
        article.update(:title => "novi naslov")
        expect(Article.find_by_title("novi naslov")).to eq(article)
      end
    end

    describe 'deletion' do
      it 'successfully deletes an article' do
        article.destroy
        expect(Article.count).to eq(0)
      end
    end 

end
