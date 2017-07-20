require 'jsonapi-serializers'

class BreedSerializer
  include JSONAPI::Serializer

  attribute :name
  attribute :origin
  attribute :common_name
  attribute :characteristics
  attribute :image
  attribute :fun_fact
  attribute :variations
  attribute :history
end
