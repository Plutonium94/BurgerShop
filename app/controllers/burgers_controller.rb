class BurgersController < ApplicationController

	def index
		@burgers = Burger.all
	end 

	def show
		@burger = Burger.find(params[:id])
	end

	def new
		@burger = Burger.new
	end

	def edit
		@burger = Burger.find(params[:id])
	end


	def create
		@burger = Burger.new(params.require(:burger).permit(:name,:price))
		if @burger.save
			redirect_to :burgers
		else
			render 'new'
		end
	end

	def destroy
		@burger = Burger.find(params[:id])
		@burger.destroy
		# render :action => :index
		redirect_to :burgers
	end


end
