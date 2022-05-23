require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'creation' do
    it 'User can be created' do
      user = User.create(id: 1, username: "root", email: "example@mail.com", password: "123456", password_confirmation: "123456")
      expect(user).to be_valid
    end
  end
end

  describe 'updating' do
    it 'checks that username from a user can be updated' do
      @user = User.create(id: 1, username: "root", email: "example@mail.com", password: "123456", password_confirmation: "123456")
      @user.update(:username => "john12")
      expect(User.find_by_username("john12")).to eq(@user)
    end
  end

  describe 'deletion' do
    it 'checks that user can be deleted' do
      @user = User.create(id: 1, username: "root", email: "example@mail.com", password: "123456", password_confirmation: "123456")
      @user.destroy
      expect(User.count).to eq(0)
    end
  end

