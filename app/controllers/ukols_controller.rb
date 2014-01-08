class UkolsController < ApplicationController
  before_action :set_ukol, only: [:show, :edit, :update, :destroy]


  # GET /ukols.json
  def index
    @ukols = Ukol.all
  end

  # GET /ukols/1
  # GET /ukols/1.json
  def show
  end

  # GET /ukols/new
  def new
    @ukol = Ukol.new
  end

  # GET /ukols/1/edit
  def edit
  end

  # POST /ukols
  # POST /ukols.json
  def create
    @ukol = Ukol.new(ukol_params)

    respond_to do |format|
      if @ukol.save
        format.html { redirect_to @ukol, notice: 'Ukol was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ukol }
      else
        format.html { render action: 'new' }
        format.json { render json: @ukol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ukols/1
  # PATCH/PUT /ukols/1.json
  def update
    respond_to do |format|
      if @ukol.update(ukol_params)
        format.html { redirect_to @ukol, notice: 'Ukol was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ukol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ukols/1
  # DELETE /ukols/1.json
  def destroy
    @ukol.destroy
    respond_to do |format|
      format.html { redirect_to ukols_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ukol
      @ukol = Ukol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ukol_params
      params.require(:ukol).permit(:porada_id, :manazer_id, :popis, :splnen, :deadline)
    end
end
