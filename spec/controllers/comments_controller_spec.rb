require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

  let(:comment) { create(:comment) }

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
