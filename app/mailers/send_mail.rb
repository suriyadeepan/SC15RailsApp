class SendMail < ApplicationMailer
  default from: 'summercamp2k15@gmail.com'
  def info_email(email,subject,content)
    mail(to: email, subject: subject) do |format|
      format.text do 
        render text: content
      end
    end
  end

  def send_contact_message_to_organizers(contact)
    @contact = contact
    mail(to: "pro.aravind@gmail.com, ask@fsftn.org, mohsal.saleem@gmail.com", subject: "#{contact.name} contacted through summer camp site")
  end
end
