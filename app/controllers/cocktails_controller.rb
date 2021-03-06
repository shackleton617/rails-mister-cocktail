class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(strong_params)
      if @cocktail.save
        redirect_to @cocktail
      else render :new
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.delete
    redirect_to @cocktail
  end

  private

    def strong_params
      params.require(:cocktail).permit(:name)
    end

     def set_cocktail
      @cocktail = Cocktail.find(params[:cocktail_id])
    end
end
