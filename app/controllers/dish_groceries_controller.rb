class DishGroceriesController < ApplicationController
  before_action :set_dish_grocery, only: [:show, :edit, :update, :destroy]

  # GET /dish_groceries
  # GET /dish_groceries.json
  def index
    @dish_groceries = DishGrocery.all
  end

  # GET /dish_groceries/1
  # GET /dish_groceries/1.json
  def show
  end

  # GET /dish_groceries/new
  def new
    @dish_grocery = DishGrocery.new
  end

  # GET /dish_groceries/1/edit
  def edit
  end

  # POST /dish_groceries
  # POST /dish_groceries.json
  def create
    @dish_grocery = DishGrocery.new(dish_grocery_params)

    respond_to do |format|
      if @dish_grocery.save
        format.html { redirect_to @dish_grocery, notice: 'Dish grocery was successfully created.' }
        format.json { render :show, status: :created, location: @dish_grocery }
      else
        format.html { render :new }
        format.json { render json: @dish_grocery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dish_groceries/1
  # PATCH/PUT /dish_groceries/1.json
  def update
    respond_to do |format|
      if @dish_grocery.update(dish_grocery_params)
        format.html { redirect_to @dish_grocery, notice: 'Dish grocery was successfully updated.' }
        format.json { render :show, status: :ok, location: @dish_grocery }
      else
        format.html { render :edit }
        format.json { render json: @dish_grocery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dish_groceries/1
  # DELETE /dish_groceries/1.json
  def destroy
    @dish_grocery.destroy
    respond_to do |format|
      format.html { redirect_to dish_groceries_url, notice: 'Dish grocery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish_grocery
      @dish_grocery = DishGrocery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dish_grocery_params
      params.require(:dish_grocery).permit(:grocery_item_id, :dish_id)
    end
end
