class CocktailsController < ApplicationController

   def index
    if params[:search]
      @cocktails = Cocktail.where('name ILIKE ?', params[:search])
    else
      @cocktails = Cocktail.all
    end
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

  def destroy
    set_cocktail
    @cocktail.destroy
    redirect_to root_path
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def set_dose
    @dose = Dose.where(cocktail_id: params[:id])
  end


  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

end
