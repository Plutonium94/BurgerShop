class FriesController < ApplicationController

	def index
		@fries = Fry.all
	end

	def show
		@fry = Fry.find(params[:id])
	end

	def new
		@fry = Fry.new
	end

	def create
		@fry = Fry.new(params.require(:fry).permit(:name,:price, :size))
		if @fry.save
			redirect_to :fries
		else
			render 'new'
		end
	end

	def destroy
		@fry = Fry.find(params[:id])
		@fry.destroy
		redirect_to :fries
	end
end
