class SendController < ApplicationController
  def create
  	ContactMailer.contact_send(params).deliver
  	flash[:notice]= "Formulario enviado"
  	redirect_to root_path
  end
end
