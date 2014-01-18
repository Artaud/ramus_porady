class FunkcesController < ApplicationController
  before_action :set_funkce, only: [:show, :edit, :update, :destroy]

  # GET /funkces
  # GET /funkces.json
  def index
    @funkces = Funkce.all
  end

  # GET /funkces/1
  # GET /funkces/1.json
  def show
  end

  # GET /funkces/new
  def new
    @funkce = Funkce.new
  end

  # GET /funkces/1/edit
  def edit
  end

  # POST /funkces
  # POST /funkces.json
  def create
    @funkce = Funkce.new(funkce_params)

    respond_to do |format|
      if @funkce.save
        format.html { redirect_to @funkce, notice: 'Funkce was successfully created.' }
        format.json { render action: 'show', status: :created, location: @funkce }
      else
        format.html { render action: 'new' }
        format.json { render json: @funkce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /funkces/1
  # PATCH/PUT /funkces/1.json
  def update
    respond_to do |format|
      if @funkce.update(funkce_params)
        format.html { redirect_to @funkce, notice: 'Funkce was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @funkce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funkces/1
  # DELETE /funkces/1.json
  def destroy
    @funkce.destroy
    respond_to do |format|
      format.html { redirect_to funkces_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funkce
      @funkce = Funkce.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def funkce_params
      params.require(:funkce).permit(:jmeno, :prijmeni, :nazev_funkce)
    end
end
