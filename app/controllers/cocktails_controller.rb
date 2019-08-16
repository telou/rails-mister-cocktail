class CocktailsController < ApplicationController

   def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
    set_cocktail
    # set_dose
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def set_dose
    @dose = Dose.where(cocktail_id: params[:id])
  end


  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

end
