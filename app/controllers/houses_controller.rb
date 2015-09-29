class HousesController < ApplicationController


    def index
        @houses = House.all
        @cars = Car.show_cars(8)
    end

    def new
        @house = House.new
    end

    def show
        @house = House.find(params[:id])
    end

    def create
        @house = House.new(house_params)
        if @house.save
            redirict_to @house
        end
    end
    def edit
        @house = House.find(params[:id])
    end
    
    def udpate
        @house = House.find(params[:id])
        if @house.update(house_params)
            redirect_to @house
        end
    end
    def destroy
        @house = House.find(params[:id])
        @house.destroy
        redirect_to '/houses'
    end
    
    private
        def house_params
            params.require(:house).permit(:post)
        end



end
