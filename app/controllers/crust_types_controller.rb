class CrustTypesController < ApplicationController
  before_action :set_crust_type, only: [:show, :edit, :update, :destroy]

  # GET /crust_types
  # GET /crust_types.json
  def index
    @crust_types = CrustType.all
  end

  # GET /crust_types/1
  # GET /crust_types/1.json
  def show
  end

  # GET /crust_types/new
  def new
    @crust_type = CrustType.new
  end

  # GET /crust_types/1/edit
  def edit
  end

  # POST /crust_types
  # POST /crust_types.json
  def create
    @crust_type = CrustType.new(crust_type_params)

    respond_to do |format|
      if @crust_type.save
        format.html { redirect_to @crust_type, notice: 'Crust type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @crust_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @crust_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crust_types/1
  # PATCH/PUT /crust_types/1.json
  def update
    respond_to do |format|
      if @crust_type.update(crust_type_params)
        format.html { redirect_to @crust_type, notice: 'Crust type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @crust_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crust_types/1
  # DELETE /crust_types/1.json
  def destroy
    @crust_type.destroy
    respond_to do |format|
      format.html { redirect_to crust_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crust_type
      @crust_type = CrustType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crust_type_params
      params.require(:crust_type).permit(:name, :price_modifier)
    end
end
