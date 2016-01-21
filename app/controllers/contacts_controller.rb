class ContactsController < ApplicationController
  
  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      ContactMailer.contact_message(params[:contact]).deliver
      redirect_to root_path, notice: 'Mensaje Enviado con Éxito'

    else
      render template: 'welcome/index'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:advise, :name, :email, :message)
  end

end