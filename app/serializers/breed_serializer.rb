class BreedSerializer < ActiveModel::Serializer
  attributes :name, :origin, :common_name, :characteristics, :image, :fun_fact, :variations, :history
end
