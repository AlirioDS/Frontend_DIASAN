class ContactMailer < ApplicationMailer
	default from: "Web DIASAN <contacto@diasan.com"

	def contact_send(params) @parameters=params
		mail(to'electrificacionesdiasan@gmail.com',subject:@parameters["Contacto Página"])
	end
end
