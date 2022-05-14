class VaccinesController < ApplicationController    
    def index
        @vaccines = Vaccine.all
    end

    def show
        @vaccine = Vaccine.find(params[:id])
    end

    def new
        @vaccine = Vaccine.new
    end

    def edit
        @vaccine = Vaccine.find(params[:id])
    end

    def create
        @vaccine = Vaccine.new(vaccine_params)
        if @vaccine.save
          redirect_to @vaccine
        else
          render :new
        end
    end
      
    def update
        @vaccine = Vaccine.find(params[:id])
        if @vaccine.update(vaccine_params)
          redirect_to @vaccine
        else
          render :edit
        end
    end
    
    def destroy
      vaccine = Vaccine.find(params[:id])
      vaccine.destroy
    
      redirect_to vaccines_path
    end

    private
    def vaccine_params
        params.require(:vaccine).permit(:nombre, :lote, :fecha_vencimiento, :stock)
    end
end
