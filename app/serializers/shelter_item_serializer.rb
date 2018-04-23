class ShelterItemSerializer < ActiveModel::Serializer
  attributes :id, :item_id, :inventory, :shelter_id
end
