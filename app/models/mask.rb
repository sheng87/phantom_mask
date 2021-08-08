class Mask < ApplicationRecord
  has_and_belongs_to_many :drugstores
end
