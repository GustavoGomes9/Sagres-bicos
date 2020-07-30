class BicosController < ApplicationController
  before_action :set_bico, only: [:show, :edit, :update, :destroy]

  # GET /bicos
  # GET /bicos.json
  def index
    @bicos = Bico.all
  end

  # GET /bicos/1
  # GET /bicos/1.json
  def show
  end

  # GET /bicos/new
  def new
    @bico = Bico.new
  end

  # GET /bicos/1/edit
  def edit
  end

  # POST /bicos
  # POST /bicos.json
  def create
    @bico = Bico.new(bico_params)

    respond_to do |format|
      if @bico.save
        format.html { redirect_to @bico, notice: 'Bico was successfully created.' }
        format.json { render :show, status: :created, location: @bico }
      else
        format.html { render :new }
        format.json { render json: @bico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bicos/1
  # PATCH/PUT /bicos/1.json
  def update
    respond_to do |format|
      if @bico.update(bico_params)
        format.html { redirect_to @bico, notice: 'Bico was successfully updated.' }
        format.json { render :show, status: :ok, location: @bico }
      else
        format.html { render :edit }
        format.json { render json: @bico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bicos/1
  # DELETE /bicos/1.json
  def destroy
    @bico.destroy
    respond_to do |format|
      format.html { redirect_to bicos_url, notice: 'Bico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bico
      @bico = Bico.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bico_params
      params.require(:bico).permit(:ipe, :dk_code, :color, :flow_rate, :drilling)
    end
end
