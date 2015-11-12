class ContactMailer < ApplicationMailer
	default from: "electrificacionesdiasan@gmail.com"

	def contact_send(params)
		@params= params
		mail(to: "electrificacionesdiasan@gmail.com",subject: "AVISO")
	end
end
