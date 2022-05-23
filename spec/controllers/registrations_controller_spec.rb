require 'rails_helper'

RSpec.describe RegistrationsController, type: :controller do

    describe 'creation' do
        it 'User can be registered' do
          user = User.create(id: 1, username: "root", email: "example@mail.com", firstname: "Joe", lastname:"Example", password: "123456", password_confirmation: "123456")
          expect(user).to be_valid
        end
      end
end
