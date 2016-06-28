class WinnersController < ApplicationController
	respond_to :html, :json

	def index
		respond_with User.all
	end

	def show
		respond_with User.find(params[:id])
	end

	def create
		respond_with User.create(params[:entry])
	end

	def update
		respond_with User.update(params[:id], params[:entry])
	end

	def destroy
		respond_with Users.destroy(params[:id])
	end
end
