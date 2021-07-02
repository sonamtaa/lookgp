# frozen_string_literal: true

module Types
  class AuthorType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :yob, Integer, null: false
    field :is_alive, Boolean, null: false
  end
end
