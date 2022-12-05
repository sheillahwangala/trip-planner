class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :notes, trip_id

  has_many :trips
end
