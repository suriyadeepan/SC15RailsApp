class SendMail < ApplicationMailer
	default from: 'mohsal.saleem@gmail.com'
	def info_email(email,subject,content)
		mail(to: email,subject: subject) do |format|
			format.text do 
				render text: content
			end
		end
	end
end
