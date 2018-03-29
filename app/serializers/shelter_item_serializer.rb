class ShelterItemSerializer < ActiveModel::Serializer
  attributes :id, :item_id, :shelter_id, :inventory
end
