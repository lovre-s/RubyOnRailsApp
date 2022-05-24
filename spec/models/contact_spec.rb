require 'rails_helper'

RSpec.describe Contact, type: :model do

  let(:contact) { build(:contact) }

  describe 'creation' do
    it 'checks that contact can be created' do
      expect{
        contact_params = contact
        expect { post :create, :contact => contact_params }.to change(Contact, :count).by(1) 
      }
    end
  end

  describe 'updating' do
    it 'checks that a contact email can be updated' do
      contact.update(:email => "newmail@mail.com")
      expect(Contact.find_by_email("newmail@mail.com")).to eq(contact)
    end
  end

  describe 'deletion' do
    it 'checks that a contact can be destroyed' do
      contact.destroy
      expect(Contact.count).to eq(0)
    end
  end


end


