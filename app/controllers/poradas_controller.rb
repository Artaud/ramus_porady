class PoradasController < ApplicationController
  before_action :set_porada, only: [:show, :edit, :update, :destroy]

  # GET /poradas
  # GET /poradas.json
  def index
    @poradas = Porada.all
  end

  # GET /poradas/1
  # GET /poradas/1.json
  def show
  end

  # GET /poradas/new
  def new
    @porada = Porada.new
  end

  # GET /poradas/1/edit
  def edit
  end

  # POST /poradas
  # POST /poradas.json
  def create
    @porada = Porada.new(porada_params)

    respond_to do |format|
      if @porada.save
        format.html { redirect_to @porada, notice: 'Porada was successfully created.' }
        format.json { render action: 'show', status: :created, location: @porada }
      else
        format.html { render action: 'new' }
        format.json { render json: @porada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poradas/1
  # PATCH/PUT /poradas/1.json
  def update
    respond_to do |format|
      if @porada.update(porada_params)
        format.html { redirect_to @porada, notice: 'Porada was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @porada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poradas/1
  # DELETE /poradas/1.json
  def destroy
    @porada.destroy
    respond_to do |format|
      format.html { redirect_to poradas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_porada
      @porada = Porada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def porada_params
      params.require(:porada).permit(:datum, :cislo)
    end
end
