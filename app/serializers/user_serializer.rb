class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :about

  has_many :trips
end
