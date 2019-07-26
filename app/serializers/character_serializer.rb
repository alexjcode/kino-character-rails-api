# frozen_string_literal: true

class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :name, :movie, :born_on, :location, :likes, :img_working

  def name
    object.first_name.capitalize + ' ' + object.last_name.capitalize
  end

  def img_working
    if object.img.length < 5
      'https://i.imgur.com/X2rjLGk.png'
    else
      object.img
    end
  end

  # :editable

  # def editable
  #   scope == object.user
  # end

  belongs_to :user
end
