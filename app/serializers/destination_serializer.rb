class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :notes

  has_many :trips
end
