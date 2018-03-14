class ShelterItemSerializer < ActiveModel::Serializer
  attributes :id, :shelter_id, :item_id, :inventory
end
