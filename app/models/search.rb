class Search < ApplicationRecord
  def advanced_search
    drugstores = Drugstore.all

    drugstores = drugstores.where("name ILIKE ?", "%#{drugstore_name}%") if drugstore_name.exist?
    drugstores = drugstores.where("masks ->> 'name' ILIKE ?", "%#{mask_name}%")  if mask_name.exist?
    drugstores = drugstores.where("")
  end
end
