class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @doses = Doses.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @doses = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.save

    redirect_to cocktail_path(@dose.cocktail)
  end

  def dose_params
    params.require(:cocktail).permit(:description)
  end
end