class Breed < ApplicationRecord
  validates :name, :origin, :common_name, :characteristics, :image, :fun_fact, :variations, :history, presence: true
end
