class DosesController < ApplicationController
  before_action :set_dose, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
     if @dose.save
        redirect_to cocktail_path(@cocktail)
      else
        render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

 private

 def set_dose
  @dose = Dose.find(params[:id])
end

def dose_params
  params.require(:dose).permit(:name)
end
end
