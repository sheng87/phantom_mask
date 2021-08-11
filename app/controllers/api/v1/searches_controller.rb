class Api::V1::SearchesController < ApplicationController
  def new 
    @search = Search.new
  end

  def create
    @search = Search.create(min_price: params[:min_price], max_price: params[:max_price])
    render json: {
      data: @search.search_masks_price.each { |mask|
        {
          mask_name: mask.mask_name,
          price: mask.price
        }
      }
    }
  end


  def show
    @search = Search.find(params[:id])
  end
  
  
  def search_params
    params.require(:search).permit(:opening_time, :opening_days, :masks, :min_price, :max_price, :drugstore_name, :transaction_amounts, :start_date, :end_date)
  end
end
