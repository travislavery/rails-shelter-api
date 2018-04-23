class ShelterSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :phone_number, :image
  belongs_to :user, serializer: ShelterUserSerializer
  has_many :items, serializer: ItemShelterSerializer
  has_many :shelter_items
end
