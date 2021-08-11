class Api::V1::DrugstoreController < ApplicationController

  def index 
    @drugstores = Drugstore.all
    render json: {
      data: @drugstores.map {|drugstore|
        {
          name: drugstore.name,
          cashBalance: drugstore.cashBalance,
          openingHours: drugstore.openingHours
        }
      }
    }  
  end

  def edit 
    @drugstore = Drugstore.find_by(id: params[:id])

    render json: {
      name: @drugstore.name
    }
  end 

  def update 

    if  @drugstore.update(name: params[:name])
      render json: {message: "更新成功"} 
    else
      render json: {message: "failed"} 
    end                 
  end


end
