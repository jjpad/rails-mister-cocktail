class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create]


  def new
    @ingredients = Ingredient.all - @cocktail.ingredients
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
     if @dose.save
        redirect_to cocktail_path(@cocktail)
      else
        @ingredients = Ingredient.all - @cocktail.ingredients
        #you need to reload the ingredients
        render :new
    end
  end

  def destroy
    dose = Dose.find(params[:id])
    # look at routes for url pattern
    cocktail = dose.cocktail
    dose.destroy
    # it'll return the cocktail
    redirect_to cocktail_path(cocktail)
  end

 private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end


# params from form, cocktail from url
