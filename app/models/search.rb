class Search < ApplicationRecord
  def search_masks_price
    masks = Mask.all
    masks = masks.where("price >= ?", min_price) if min_price.present?
    masks = masks.where("price <= ?", max_price) if max_price.present?
    return masks
  end

  def search_masks_in_onestore
    store_masks = Drugstore.find_by(drugstore_name: params[:drugstore_name]).masks
    masks = store_masks.order("price asc") 
    return masks
  end
end
