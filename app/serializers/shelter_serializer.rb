class ShelterSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :phone_number, :image
end
