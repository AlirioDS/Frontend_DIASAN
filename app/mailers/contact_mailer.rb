class ContactMailer < ApplicationMailer
	default :from => 'contactoelectrificacionesdiasa@gmail.com'

	def contact_message(contact)
		@contact = contact
		mail(:to => 'electrificacionesdiasan@gmail.com', subject: contact[:advise])
	end
end
