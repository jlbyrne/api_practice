class WelcomeController < ApplicationController
	def index
		render :json => {ok: "ok"}.to_json
	end
end