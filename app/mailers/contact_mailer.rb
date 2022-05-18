class ContactMailer < ActionMailer::Base
    default to: "info@mail.com"

    def contact_email(name, email, message)
        @name = name
        @email = email
        @message = message
    
    mail(from: email, subject:'RubyOnRailsApp.com Contact Form Message')
    end
end
    