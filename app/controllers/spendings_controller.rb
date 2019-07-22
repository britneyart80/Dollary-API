class SpendingsController < ApplicationController
  before_action :set_spending, only: [:show, :update, :destroy]

  # GET /spendings
  def index
    @spendings = Spending.all

    render json: @spendings
  end

  # GET /spendings/1
  def show
    render json: @spending
  end

  # POST /spendings
  def create
    @spending = Spending.new(spending_params)

    if @spending.save
      render json: @spending, status: :created, location: @spending
    else
      render json: @spending.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spendings/1
  def update
    if @spending.update(spending_params)
      render json: @spending
    else
      render json: @spending.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spendings/1
  def destroy
    @spending.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spending
      @spending = Spending.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def spending_params
      params.require(:spending).permit(:item, :cost, :date, :envelope_id, :category_id)
    end
end
