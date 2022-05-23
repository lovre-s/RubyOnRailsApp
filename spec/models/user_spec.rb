require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { build(:user) }

  describe 'creation' do
    it 'checks that user can be created' do
      expect{
        user_params = user
        expect { post :create, :user => user_params }.to change(User, :count).by(1) 
      }
    end
  end


  describe 'updating' do
    it 'checks that username from a user can be updated' do
      user.update(:username => "joe12")
      expect(User.find_by_username("joe12")).to eq(user)
    end
  end

  describe 'deletion' do
    it 'checks that user can be deleted' do
      user.destroy
      expect(User.count).to eq(0)
    end
  end

end