class FurgonsController < ApplicationController
  before_action :set_furgon, only: [:show, :edit, :update, :destroy]

  # GET /furgons
  # GET /furgons.json
  def index
    @furgones = Furgon.all
  end

  # GET /furgons/1
  # GET /furgons/1.json
  def show
  end

  # GET /furgons/new
  def new
    @furgon = Furgon.new
  end

  # GET /furgons/1/edit
  def edit
  end

  # POST /furgons
  # POST /furgons.json
  def create
    @furgon = Furgon.new(furgon_params)

    respond_to do |format|
      if @furgon.save
        format.html { redirect_to @furgon, notice: 'Furgon was successfully created.' }
        format.json { render :show, status: :created, location: @furgon }
      else
        format.html { render :new }
        format.json { render json: @furgon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /furgons/1
  # PATCH/PUT /furgons/1.json
  def update
    respond_to do |format|
      if @furgon.update(furgon_params)
        format.html { redirect_to @furgon, notice: 'Furgon was successfully updated.' }
        format.json { render :show, status: :ok, location: @furgon }
      else
        format.html { render :edit }
        format.json { render json: @furgon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /furgons/1
  # DELETE /furgons/1.json
  def destroy
    @furgon.destroy
    respond_to do |format|
      format.html { redirect_to furgons_url, notice: 'Furgon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_furgon
      @furgon = Furgon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def furgon_params
      params.require(:furgon).permit(:patente, :estado)
    end
end
