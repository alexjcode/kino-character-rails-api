# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :characters
  has_many :characters
end
