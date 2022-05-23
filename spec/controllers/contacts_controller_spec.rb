require 'rails_helper'

RSpec.describe ContactsController, type: :controller do

  let(:contact) { build(:contact) }

    describe 'create' do
      it 'successfully creates a new contact' do
        expect{
          contact_params = contact
          expect { post :create, :contact => contact_params }.to change(Contact, :count).by(1) 
        }
      end
    end

    describe 'updating' do
      it 'successfully updates email from contact' do
        contact.update(:email => "newmail@mail.com")
        expect(Contact.find_by_email("newmail@mail.com")).to eq(contact)
       end
    end
    
    describe 'deletion' do
      it 'successfully deletes contact' do
        contact.destroy
        expect(Contact.count).to eq(0)
      end
    end





end
