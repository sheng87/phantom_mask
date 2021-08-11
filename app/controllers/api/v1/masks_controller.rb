class Api::V1::MasksController < ApplicationController
  

  def edit
    @mask = Mask.find(params[:id])
    render json: {
      mask_name: @mask.mask_name,
      price: @mask.price
    }
  end  

  def update
    @mask = Mask.find(params[:id])
    if @mask.update(mask_name: params[:mask_name], price: params[:price])
      render json: {message: '更新成功'}
    else
      render json: {message: 'failed'}
    end

  end

  def destroy
    @mask = Mask.find_by(mask_name: params[:mask_name])
    @mask.destroy
  end

end
