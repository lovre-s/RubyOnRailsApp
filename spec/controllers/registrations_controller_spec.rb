require 'rails_helper'

RSpec.describe RegistrationsController, type: :controller do

  let(:user) { build(:user) }

    describe 'creation' do
        it 'successfully registers a new user' do
          expect{
            user_params = registration
            expect { post :create, :registration => user_params }.to change(Registration, :count).by(1) 
          }
        end
    end
end
