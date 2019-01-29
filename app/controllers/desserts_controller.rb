class DessertsController < ApplicationController

	def index
		@desserts = Dessert.all
	end

	def show
		@dessert = Dessert.find(params[:id])
	end

	def new
		@dessert = Dessert.new
	end

	def create
		@dessert = Dessert.new(params.require(:dessert).permit(:name,:price))
		if @dessert.save
			redirect_to @dessert
		else
			redirect_to :new_dessert
		end
	end

	def destroy
		@dessert = Dessert.find(params[:id])
		@dessert.destroy
		redirect_to :desserts
	end
end
