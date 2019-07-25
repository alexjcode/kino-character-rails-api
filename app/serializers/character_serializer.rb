# frozen_string_literal: true

class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :movie, :born_on, :location, :likes, :img

  def name
    object.first_name.capitalize + ' ' + object.last_name.capitalize
  end

  # :editable

  # def editable
  #   scope == object.user
  # end

  belongs_to :user
end
