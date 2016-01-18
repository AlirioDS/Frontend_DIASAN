class Contact < ActiveRecord::Base
	validates_presence_of :advise, :name, :email, :message
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
