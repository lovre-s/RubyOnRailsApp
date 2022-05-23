require 'rails_helper'

RSpec.describe Contact, type: :model do
  describe 'creation' do
    it 'can be created' do
      contact = Contact.create(name: "Joe", email: "example@mail.com", message: "Message")
      expect(contact).to be_valid
    end
  end

  describe 'updating' do
    it 'checks that a contact email can be updated' do
      @contact = Contact.create(name: "Joe", email: "example@mail.com", message: "Message")
      @contact.update(:email => "newmail@mail.com")
      expect(Contact.find_by_email("newmail@mail.com")).to eq(@contact)
    end
  end

  describe 'deletion' do
    it 'checks that a contact can be destroyed' do
      @contact = Contact.create(name: "Joe", email: "example@mail.com", message: "Message")
      @contact.destroy
      expect(Contact.count).to eq(0)
    end
  end


end


