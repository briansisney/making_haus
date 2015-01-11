class PaidsController < ApplicationController
  before_action :set_paid, only: [:show, :edit, :update, :destroy]

  # GET /paids
  # GET /paids.json
  def index
    @paids = Paid.all
  end

  # GET /paids/1
  # GET /paids/1.json
  def show
  end

  # GET /paids/new
  def new
    @paid = Paid.new
  end

  # GET /paids/1/edit
  def edit
  end

  # POST /paids
  # POST /paids.json
  def create
    @paid = Paid.new(paid_params)

    respond_to do |format|
      if @paid.save
        format.html { redirect_to @paid, notice: 'Paid was successfully created.' }
        format.json { render :show, status: :created, location: @paid }
      else
        format.html { render :new }
        format.json { render json: @paid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paids/1
  # PATCH/PUT /paids/1.json
  def update
    respond_to do |format|
      if @paid.update(paid_params)
        format.html { redirect_to @paid, notice: 'Paid was successfully updated.' }
        format.json { render :show, status: :ok, location: @paid }
      else
        format.html { render :edit }
        format.json { render json: @paid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paids/1
  # DELETE /paids/1.json
  def destroy
    @paid.destroy
    respond_to do |format|
      format.html { redirect_to paids_url, notice: 'Paid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paid
      @paid = Paid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paid_params
      params.require(:paid).permit(:date_completed, :amount, :platform, :actor_id, :target_id, :reproter_id)
    end
end
