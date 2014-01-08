class PoradasController < ApplicationController
  def new #provadi se pri kliknuti na NEW PORADA v indexu / vytvari pouze prazdny objekt
    @porada = Porada.new
  end
  
  def create #provadi se pri vyplneni formulare kliknutim na CREATE PORADA
    @porada = Porada.new(params[porada_params])
    @porada.save
  end
  
  def edit #provadi se po kliku na edit v indexu
    @porada = Porada.find(params[:id])
  end
  
  def update
    
  end
end




private

  def porada_params
    params.require(:porada).permit(:id, :datum, :"datum(1i)", :"datum(2i)", :"datum(3i)")
  end