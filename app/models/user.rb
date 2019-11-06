class User < ApplicationRecord
	validates_presence_of :name, :color, :number
	validates_numericality_of :number
	validates_length_of :number, is: 2
end