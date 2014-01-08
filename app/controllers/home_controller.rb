class HomeController < ApplicationController
 
  # GET /home  
  def index
    @ukols = Ukol.all
    @poradas = Porada.all
    @jednanis = Jednani.all
    @reports = Report.all
  end
  
  
end
