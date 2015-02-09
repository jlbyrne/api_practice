class WelcomeController < ApplicationController
	def index
		render :json => {"ok": "ok"}
	end
end