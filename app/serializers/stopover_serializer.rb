class StopoverSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :activity, :trip_id, :destination_id

  belongs_to :trip
  belongs_to :destination
end
