class NiñosController < ApplicationController
  before_action :set_niño, only: [:show, :edit, :update, :destroy]

  # GET /niños
  # GET /niños.json
  def index
    @niños = Niño.all
  end

  # GET /niños/1
  # GET /niños/1.json
  def show
  end

  # GET /niños/new
  def new
    @niño = Niño.new
  end

  # GET /niños/1/edit
  def edit
  end

  # POST /niños
  # POST /niños.json
  def create
    @niño = Niño.new(niño_params)

    respond_to do |format|
      if @niño.save
        format.html { redirect_to @niño, notice: 'Niño was successfully created.' }
        format.json { render :show, status: :created, location: @niño }
      else
        format.html { render :new }
        format.json { render json: @niño.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /niños/1
  # PATCH/PUT /niños/1.json
  def update
    respond_to do |format|
      if @niño.update(niño_params)
        format.html { redirect_to @niño, notice: 'Niño was successfully updated.' }
        format.json { render :show, status: :ok, location: @niño }
      else
        format.html { render :edit }
        format.json { render json: @niño.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /niños/1
  # DELETE /niños/1.json
  def destroy
    @niño.destroy
    respond_to do |format|
      format.html { redirect_to niños_url, notice: 'Niño was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_niño
      @niño = Niño.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def niño_params
      params.require(:niño).permit(:nombre, :apoderado_id, :horario, :colegio_id)
    end
end
