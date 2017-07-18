class Breed < ApplicationRecord
  validates :name, :origin, :common_name, :characteristics, :image, :fun_fact, :variations, :history, presence: true

  # def self.search(input)
    # scope :origin, -> (input) { where("origin like ?", "#{input}")}
    scope :name_search, -> (input) { where("name like ?", "%#{input}%")}
  # end

end
