class SpousesController < ApplicationController

    def index
        @spouses = Spouse.all
    end

    def new
        @spouse = Spouse.new
    end

    def show
        @spouse = Spouse.find(params[:id])
    end

    def create
        @spouse = Spouse.new(spouse_params)

        if @spouse.save
            redirict_to @spouse
        end
    end

    def edit
        @spouse = Spouse.find(params[:id])
    end

    def udpate
        @spouse = Spouse.find(params[:id])

        if @spouse.update(spouse_params)
            redirect_to '/spouses/index'
        end
    end

    def destroy
        @spouse = Spouse.find(params[:id])
        @spouse.destroy

        redirect_to '/spouses'
    end

    private
        def spouse_params
            params.require(:spouse).permit(:name, :gender, :theme)
        end

end
