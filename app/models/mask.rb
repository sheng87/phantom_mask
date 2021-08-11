class Mask < ApplicationRecord
  has_and_belongs_to_many :drugstores

  def self.search(search)
    Mask.where("name LIKE ?", "%#{params[:search]}%")
  end
end
