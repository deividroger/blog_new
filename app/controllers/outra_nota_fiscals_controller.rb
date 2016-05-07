class OutraNotaFiscalsController < ApplicationController
  before_action :set_outra_nota_fiscal, only: [:show, :edit, :update, :destroy]

  # GET /outra_nota_fiscals
  # GET /outra_nota_fiscals.json
  def index
    @outra_nota_fiscals = OutraNotaFiscal.all
  end

  # GET /outra_nota_fiscals/1
  # GET /outra_nota_fiscals/1.json
  def show
  end

  # GET /outra_nota_fiscals/new
  def new
    @outra_nota_fiscal = OutraNotaFiscal.new
  end

  # GET /outra_nota_fiscals/1/edit
  def edit
  end

  # POST /outra_nota_fiscals
  # POST /outra_nota_fiscals.json
  def create
    @outra_nota_fiscal = OutraNotaFiscal.new(outra_nota_fiscal_params)

    respond_to do |format|
      if @outra_nota_fiscal.save
        format.html { redirect_to @outra_nota_fiscal, notice: 'Outra nota fiscal was successfully created.' }
        format.json { render :show, status: :created, location: @outra_nota_fiscal }
      else
        format.html { render :new }
        format.json { render json: @outra_nota_fiscal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outra_nota_fiscals/1
  # PATCH/PUT /outra_nota_fiscals/1.json
  def update
    respond_to do |format|
      if @outra_nota_fiscal.update(outra_nota_fiscal_params)
        format.html { redirect_to @outra_nota_fiscal, notice: 'Outra nota fiscal was successfully updated.' }
        format.json { render :show, status: :ok, location: @outra_nota_fiscal }
      else
        format.html { render :edit }
        format.json { render json: @outra_nota_fiscal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outra_nota_fiscals/1
  # DELETE /outra_nota_fiscals/1.json
  def destroy
    @outra_nota_fiscal.destroy
    respond_to do |format|
      format.html { redirect_to outra_nota_fiscals_url, notice: 'Outra nota fiscal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outra_nota_fiscal
      @outra_nota_fiscal = OutraNotaFiscal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outra_nota_fiscal_params
      params.require(:outra_nota_fiscal).permit(:cliente, :endereco)
    end
end
