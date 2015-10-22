class ApoderadosController < ApplicationController
  before_action :set_apoderado, only: [:show, :edit, :update, :destroy]

  # GET /apoderados
  # GET /apoderados.json
  def index
    @apoderados = Apoderado.all
  end

  # GET /apoderados/1
  # GET /apoderados/1.json
  def show
  end

  # GET /apoderados/new
  def new
    @apoderado = Apoderado.new
  end

  # GET /apoderados/1/edit
  def edit
  end

  # POST /apoderados
  # POST /apoderados.json
  def create
    @apoderado = Apoderado.new(apoderado_params)

    respond_to do |format|
      if @apoderado.save
        format.html { redirect_to @apoderado, notice: 'Apoderado was successfully created.' }
        format.json { render :show, status: :created, location: @apoderado }
      else
        format.html { render :new }
        format.json { render json: @apoderado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apoderados/1
  # PATCH/PUT /apoderados/1.json
  def update
    respond_to do |format|
      if @apoderado.update(apoderado_params)
        format.html { redirect_to @apoderado, notice: 'Apoderado was successfully updated.' }
        format.json { render :show, status: :ok, location: @apoderado }
      else
        format.html { render :edit }
        format.json { render json: @apoderado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apoderados/1
  # DELETE /apoderados/1.json
  def destroy
    @apoderado.destroy
    respond_to do |format|
      format.html { redirect_to apoderados_url, notice: 'Apoderado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apoderado
      @apoderado = Apoderado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apoderado_params
      params.require(:apoderado).permit(:nombre, :telefono, :paga)
    end
end
