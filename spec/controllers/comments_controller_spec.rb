require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

    describe 'create' do
        it 'successfully creates a new article' do
          user = User.create(id: 1, username: "root", email: "example@mail.com", password: "123456", password_confirmation: "123456")
          article = Article.create(id: 1, title: "naslov", body: "tekst", user_id: 1)  
          comment = Comment.create(id: 1, body: "komentar", user_id: 1, article_id: 1)
          expect(Comment.last.body).to eq("komentar")
        end
    end

    describe 'updating' do
        it 'checks that a comment can be updated' do
          user = User.create(id: 1, username: "root", email: "example@mail.com", password: "123456", password_confirmation: "123456")
          article = Article.create(id: 1, title: "naslov", body: "tekst", user_id: 1) 
          @comment = Comment.create(id: 1, body: "komentar", user_id: 1, article_id: 1)
          @comment.update(:body => "novi komentar")
          expect(Comment.find_by_body("novi komentar")).to eq(@comment)
        end
    end

    describe 'deletion' do
        it 'checks that a comment can be destroyed' do
          user = User.create(id: 1, username: "root", email: "example@mail.com", password: "123456", password_confirmation: "123456")
          article = Article.create(id: 1, title: "naslov", body: "tekst", user_id: 1) 
          @comment = Comment.create(id: 1, body: "komentar", user_id: 1, article_id: 1)
          @comment.destroy
          expect(Comment.count).to eq(0)
        end
    end


end
