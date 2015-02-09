class User < ActiveRecord::Base
	attr_accessible :name, :email, :phone

	validates_presence_of :name, :email, :phone
	validates_numericality_of :phone, message: "Please enter a phone number of 10 digits"
	validates_length_of :phone, is: 10, message: "Please enter a phone number of 10 digits"
end