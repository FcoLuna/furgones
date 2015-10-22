class MujersController < ApplicationController
  before_action :set_mujer, only: [:show, :edit, :update, :destroy]

  # GET /mujers
  # GET /mujers.json
  def index
    @mujers = Mujer.all
  end

  # GET /mujers/1
  # GET /mujers/1.json
  def show
  end

  # GET /mujers/new
  def new
    @mujer = Mujer.new
  end

  # GET /mujers/1/edit
  def edit
  end

  # POST /mujers
  # POST /mujers.json
  def create
    @mujer = Mujer.new(mujer_params)

    respond_to do |format|
      if @mujer.save
        format.html { redirect_to @mujer, notice: 'Mujer was successfully created.' }
        format.json { render :show, status: :created, location: @mujer }
      else
        format.html { render :new }
        format.json { render json: @mujer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mujers/1
  # PATCH/PUT /mujers/1.json
  def update
    respond_to do |format|
      if @mujer.update(mujer_params)
        format.html { redirect_to @mujer, notice: 'Mujer was successfully updated.' }
        format.json { render :show, status: :ok, location: @mujer }
      else
        format.html { render :edit }
        format.json { render json: @mujer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mujers/1
  # DELETE /mujers/1.json
  def destroy
    @mujer.destroy
    respond_to do |format|
      format.html { redirect_to mujers_url, notice: 'Mujer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mujer
      @mujer = Mujer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mujer_params
      params.require(:mujer).permit(:edad, :sexo)
    end
end
