class Drugstore < ApplicationRecord
  has_and_belongs_to_many :masks
end
