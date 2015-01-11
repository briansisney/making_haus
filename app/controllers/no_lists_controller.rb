class NoListsController < ApplicationController
  before_action :set_no_list, only: [:show, :edit, :update, :destroy]

  # GET /no_lists
  # GET /no_lists.json
  def index
    @no_lists = NoList.all
  end

  # GET /no_lists/1
  # GET /no_lists/1.json
  def show
  end

  # GET /no_lists/new
  def new
    @no_list = NoList.new
  end

  # GET /no_lists/1/edit
  def edit
  end

  # POST /no_lists
  # POST /no_lists.json
  def create
    @no_list = NoList.new(no_list_params)

    respond_to do |format|
      if @no_list.save
        format.html { redirect_to @no_list, notice: 'No list was successfully created.' }
        format.json { render :show, status: :created, location: @no_list }
      else
        format.html { render :new }
        format.json { render json: @no_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /no_lists/1
  # PATCH/PUT /no_lists/1.json
  def update
    respond_to do |format|
      if @no_list.update(no_list_params)
        format.html { redirect_to @no_list, notice: 'No list was successfully updated.' }
        format.json { render :show, status: :ok, location: @no_list }
      else
        format.html { render :edit }
        format.json { render json: @no_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /no_lists/1
  # DELETE /no_lists/1.json
  def destroy
    @no_list.destroy
    respond_to do |format|
      format.html { redirect_to no_lists_url, notice: 'No list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_no_list
      @no_list = NoList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def no_list_params
      params.require(:no_list).permit(:name, :user_id)
    end
end
