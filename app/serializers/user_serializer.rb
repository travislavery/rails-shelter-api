class UserSerializer < ActiveModel::Serializer
  attributes :email, :authentication_token, :id
end
