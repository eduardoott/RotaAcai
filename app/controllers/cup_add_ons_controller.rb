class CupAddOnsController < ApplicationController
  before_action :set_cup_add_on, only: [:show, :edit, :update, :destroy]

  # GET /cup_add_ons
  # GET /cup_add_ons.json
  def index
    @cup_add_ons = CupAddOn.all
  end

  # GET /cup_add_ons/1
  # GET /cup_add_ons/1.json
  def show
  end

  # GET /cup_add_ons/new
  def new
    @cup_add_on = CupAddOn.new
  end

  # GET /cup_add_ons/1/edit
  def edit
  end

  # POST /cup_add_ons
  # POST /cup_add_ons.json
  def create
    File.open("public/images/#{cup_add_on_params[:image_url].original_filename}", "wb") do |f|
     f.write(cup_add_on_params[:image_url].read)
    end if cup_add_on_params[:image_url].present?

    @cup_add_on = CupAddOn.new(cup_add_on_params)
    @cup_add_on.image_url = "public/images/#{cup_add_on_params[:image_url].original_filename}" if cup_add_on_params[:image_url].present?

    respond_to do |format|
      if @cup_add_on.save
        format.html { redirect_to cup_add_ons_path, notice: 'Novo Adicional Salvo!' }
        format.json { render :show, status: :created, location: @cup_add_on }
      else
        format.html { render :new }
        format.json { render json: @cup_add_on.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cup_add_ons/1
  # PATCH/PUT /cup_add_ons/1.json
  def update
    respond_to do |format|
      if @cup_add_on.update(cup_add_on_params)
        format.html { redirect_to cup_add_ons_path, notice: 'Adicional atualizado!' }
        format.json { render :show, status: :ok, location: @cup_add_on }
      else
        format.html { render :edit }
        format.json { render json: @cup_add_on.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cup_add_ons/1
  # DELETE /cup_add_ons/1.json
  def destroy
    @cup_add_on.destroy
    respond_to do |format|
      format.html { redirect_to cup_add_ons_url, notice: 'Adicional apagado!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cup_add_on
      @cup_add_on = CupAddOn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cup_add_on_params
      params.require(:cup_add_on).permit(:name, :image_url, :price)
    end
end
