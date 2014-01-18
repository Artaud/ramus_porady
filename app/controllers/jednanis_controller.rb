class JednanisController < ApplicationController
  before_action :set_jednani, only: [:show, :edit, :update, :destroy]

  # GET /jednanis
  # GET /jednanis.json
  def index
    @jednanis = Jednani.all
  end

  # GET /jednanis/1
  # GET /jednanis/1.json
  def show
  end

  # GET /jednanis/new
  def new
    @jednani = Jednani.new
    @porada_id = params[:porada_id]
  end

  # GET /jednanis/1/edit
  def edit
  end

  # POST /jednanis
  # POST /jednanis.json
  def create
    @jednani = Jednani.new(jednani_params)

    respond_to do |format|
      if @jednani.save
        format.html { redirect_to @jednani, notice: 'Jednani was successfully created.' }
        format.json { render action: 'show', status: :created, location: @jednani }
      else
        format.html { render action: 'new' }
        format.json { render json: @jednani.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jednanis/1
  # PATCH/PUT /jednanis/1.json
  def update
    respond_to do |format|
      if @jednani.update(jednani_params)
        format.html { redirect_to @jednani, notice: 'Jednani was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @jednani.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jednanis/1
  # DELETE /jednanis/1.json
  def destroy
    @jednani.destroy
    respond_to do |format|
      format.html { redirect_to jednanis_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jednani
      @jednani = Jednani.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jednani_params
      params.require(:jednani).permit(:porada_id, :tema, :obsah)
    end
end
