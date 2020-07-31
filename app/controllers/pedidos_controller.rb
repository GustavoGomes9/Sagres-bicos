class PedidosController < ApplicationController
  before_action :set_pedido, only: [:show, :edit, :update, :destroy]
  before_action :set_bico_options, only:[:new,:create,:edit,:update]
  before_action :set_cliente_options, only:[:new,:create,:edit,:update]
  # GET /pedidos
  # GET /pedidos.json
  def index
    @pedidos = Pedido.all
  end

  # GET /pedidos/1
  # GET /pedidos/1.json
  def show
  end

  # GET /pedidos/new
  def new
    @pedido = Pedido.new
  end

  # GET /pedidos/1/edit
  def edit
  end

  # POST /pedidos
  # POST /pedidos.json
  def create
    @pedido = Pedido.new(pedido_params)

    respond_to do |format|
      if @pedido.save
        format.html { redirect_to @pedido, notice: 'Pedido was successfully created.' }
        format.json { render :show, status: :created, location: @pedido }
      else
        format.html { render :new }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedidos/1
  # PATCH/PUT /pedidos/1.json
  def update
    respond_to do |format|
      if @pedido.update(pedido_params)
        format.html { redirect_to @pedido, notice: 'Pedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedido }
      else
        format.html { render :edit }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedidos/1
  # DELETE /pedidos/1.json
  def destroy
    @pedido.destroy
    respond_to do |format|
      format.html { redirect_to pedidos_url, notice: 'Pedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_bico_options
      @bico_options = Bico.all.pluck(:ipe, :id)
    end
    ############
    def set_cliente_options
      @cliente_options = Cliente.all.pluck(:first_name, :id)
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido
      @pedido = Pedido.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pedido_params
      params.require(:pedido).permit(:data_matrix, :preco, :data_fab, :data_pedido, :data_entrega, :bico_id, :cliente_id)
    end
end
