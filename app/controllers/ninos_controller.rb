class NinosController < ApplicationController
  before_action :set_nino, only: [:show, :edit, :update, :destroy]

  # GET /ninos
  # GET /ninos.json
  def index
    @ninos = Nino.all
  end

  # GET /ninos/1
  # GET /ninos/1.json
  def show
  end

  # GET /ninos/new
  def new
    @nino = Nino.new
  end

  # GET /ninos/1/edit
  def edit
  end

  # POST /ninos
  # POST /ninos.json
  def create
    @nino = Nino.new(nino_params)

    respond_to do |format|
      if @nino.save
        format.html { redirect_to @nino, notice: 'Nino was successfully created.' }
        format.json { render :show, status: :created, location: @nino }
      else
        format.html { render :new }
        format.json { render json: @nino.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ninos/1
  # PATCH/PUT /ninos/1.json
  def update
    respond_to do |format|
      if @nino.update(nino_params)
        format.html { redirect_to @nino, notice: 'Nino was successfully updated.' }
        format.json { render :show, status: :ok, location: @nino }
      else
        format.html { render :edit }
        format.json { render json: @nino.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ninos/1
  # DELETE /ninos/1.json
  def destroy
    @nino.destroy
    respond_to do |format|
      format.html { redirect_to ninos_url, notice: 'Nino was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nino
      @nino = Nino.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nino_params
      params.require(:nino).permit(:nombre, :apoderado_id, :horario, :colegio_id)
    end
end
