class CarsController < ApplicationController
	#before_action

	def index
		@cars = Car.all
	end

	def new
		@car = Car.new
	end

	def show
		@car = Car.find(params[:id])
	end

	def create
		@car = Car.new(user_params)

		if @car.save
			redirect_to '/cars/index'
		end
	end

	def edit
		@car = Car.find(params[:id])
	end

	def update
		@car = Car.find(params[:id])

		if @car.update(car_params)
			redirect_to @car
		end
	end

	def destroy
		@car = Car.find(params[:id])
		@car.destroy

		redirect_to '/cars'	
	end

	private
    def car_params
        params.require(:car).permit(:first_name, :last_name, :email, :password)
    end    

end
