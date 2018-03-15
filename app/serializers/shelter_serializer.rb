class ShelterSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :phone_number, :image
  has_many :items, serializer: ItemShelterSerializer
end
