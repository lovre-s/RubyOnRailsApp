require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

  let(:user) { build(:user) }
  let(:article) { build(:article) }
  let(:comment) { build(:comment) }

    describe 'create' do
        it 'successfully creates a new comment' do
          expect{
            comment_params = comment
            expect { post :create, :comment => comment_params }.to change(Comment, :count).by(1) 
          }
        end
    end

    describe 'updating' do
        it 'successfully updates comment on an article' do
          user = User.create(id: 1, username: "root", email: "example@mail.com", password: "123456", password_confirmation: "123456")
          article = Article.create(id: 1, title: "naslov", body: "tekst", user_id: 1) 
          #comment = Comment.create(id: 1, body: "komentar", user_id: 1, article_id: 1)
          comment.update(:body => "novi komentar")
          expect(Comment.find_by_body("novi komentar")).to eq(comment)
        end
    end

    describe 'deletion' do
        it 'successfully deletes a comment' do
          comment.destroy
          expect(Comment.count).to eq(0)
        end
    end


end
