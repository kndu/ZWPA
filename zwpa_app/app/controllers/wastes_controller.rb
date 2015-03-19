class WastesController < ApplicationController
  before_action :set_waste, only: [:show, :edit, :update, :destroy]

  # GET /wastes
  # GET /wastes.json
  def index
    @wastes = Waste.all
  end

  # GET /wastes/1
  # GET /wastes/1.json
  def show
  end

  # GET /wastes/new
  def new
    @waste = Waste.new
    @audit = Audit.find_by_id(params[:audit_id])
    @waste.audit_id = @audit.id
  end

  # GET /wastes/1/edit
  def edit
  end

  # POST /wastes
  # POST /wastes.json
  def create
    @waste = Waste.new(waste_params)

    respond_to do |format|
      if @waste.save
        format.html { redirect_to @waste.audit, notice: 'Waste was successfully created.' }
        format.json { render action: 'show', status: :created, location: @waste }
      else
        format.html { render action: 'new' }
        format.json { render json: @waste.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wastes/1
  # PATCH/PUT /wastes/1.json
  def update
    respond_to do |format|
      if @waste.update(waste_params)
        format.html { redirect_to @waste, notice: 'Waste was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @waste.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wastes/1
  # DELETE /wastes/1.json
  def destroy
    @waste.destroy
    respond_to do |format|
      format.html { redirect_to wastes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waste
      @waste = Waste.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def waste_params
      params.require(:waste).permit(:audit_id, :weight, :material_type)
    end
end
