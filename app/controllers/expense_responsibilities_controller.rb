class ExpenseResponsibilitiesController < ApplicationController
  before_action :set_expense_responsibility, only: [:show, :edit, :update, :destroy]

  # GET /expense_responsibilities
  # GET /expense_responsibilities.json
  def index
    @expense_responsibilities = ExpenseResponsibility.all
  end

  # GET /expense_responsibilities/1
  # GET /expense_responsibilities/1.json
  def show
  end

  # GET /expense_responsibilities/new
  def new
    @expense_responsibility = ExpenseResponsibility.new
  end

  # GET /expense_responsibilities/1/edit
  def edit
  end

  # POST /expense_responsibilities
  # POST /expense_responsibilities.json
  def create
    @expense_responsibility = ExpenseResponsibility.new(expense_responsibility_params)

    respond_to do |format|
      if @expense_responsibility.save
        format.html { redirect_to @expense_responsibility, notice: 'Expense responsibility was successfully created.' }
        format.json { render :show, status: :created, location: @expense_responsibility }
      else
        format.html { render :new }
        format.json { render json: @expense_responsibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expense_responsibilities/1
  # PATCH/PUT /expense_responsibilities/1.json
  def update
    respond_to do |format|
      if @expense_responsibility.update(expense_responsibility_params)
        format.html { redirect_to @expense_responsibility, notice: 'Expense responsibility was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense_responsibility }
      else
        format.html { render :edit }
        format.json { render json: @expense_responsibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expense_responsibilities/1
  # DELETE /expense_responsibilities/1.json
  def destroy
    @expense_responsibility.destroy
    respond_to do |format|
      format.html { redirect_to expense_responsibilities_url, notice: 'Expense responsibility was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense_responsibility
      @expense_responsibility = ExpenseResponsibility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_responsibility_params
      params.require(:expense_responsibility).permit(:expense_id, :user_id, :amount)
    end
end
