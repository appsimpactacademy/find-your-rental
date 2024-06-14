class OwnerController < ApplicationController
	before_action :authenticate_user!
	layout 'owner'

	def dashboard
	end
end
