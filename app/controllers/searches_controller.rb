class SearchesController < ApplicationController
  def new 
    @search = Search.new
  end

  def create
    @search = Search.create(search_params)
  end

  def show
    @search = Search.find(params[:id])
  end
  
  private
  def search_params
    params.require(:search).permit(:opening_time, :opening_days, :masks, :min_price, :max_price, :drugstore_name, :transaction_amounts, :start_date, :end_date)
  end
end
