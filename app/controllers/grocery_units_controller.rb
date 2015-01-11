class GroceryUnitsController < ApplicationController
  before_action :set_grocery_unit, only: [:show, :edit, :update, :destroy]

  # GET /grocery_units
  # GET /grocery_units.json
  def index
    @grocery_units = GroceryUnit.all
  end

  # GET /grocery_units/1
  # GET /grocery_units/1.json
  def show
  end

  # GET /grocery_units/new
  def new
    @grocery_unit = GroceryUnit.new
  end

  # GET /grocery_units/1/edit
  def edit
  end

  # POST /grocery_units
  # POST /grocery_units.json
  def create
    @grocery_unit = GroceryUnit.new(grocery_unit_params)

    respond_to do |format|
      if @grocery_unit.save
        format.html { redirect_to @grocery_unit, notice: 'Grocery unit was successfully created.' }
        format.json { render :show, status: :created, location: @grocery_unit }
      else
        format.html { render :new }
        format.json { render json: @grocery_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grocery_units/1
  # PATCH/PUT /grocery_units/1.json
  def update
    respond_to do |format|
      if @grocery_unit.update(grocery_unit_params)
        format.html { redirect_to @grocery_unit, notice: 'Grocery unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @grocery_unit }
      else
        format.html { render :edit }
        format.json { render json: @grocery_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grocery_units/1
  # DELETE /grocery_units/1.json
  def destroy
    @grocery_unit.destroy
    respond_to do |format|
      format.html { redirect_to grocery_units_url, notice: 'Grocery unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grocery_unit
      @grocery_unit = GroceryUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grocery_unit_params
      params.require(:grocery_unit).permit(:name)
    end
end
