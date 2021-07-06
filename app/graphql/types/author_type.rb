# frozen_string_literal: true

module Types
  class AuthorInputType < GraphQL::Schema::InputObject
    graphql_name 'AuthorInputType'
    description 'Attributes for authors'

    argument :id, ID, required: false
    argument :first_name, String, required: false, camelize: false
    argument :last_name, String, required: false, camelize: false
    argument :yob, Integer, required: false
    argument :is_alive, Boolean, required: false, camelize: false
  end

  class AuthorType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :yob, Integer, null: false
    field :is_alive, Boolean, null: false
    field :full_name, String, null: false, camelize: false # user define types

    def full_name
      ([object.first_name, object.last_name].compact).join(' ')
    end

    field :coordinates, Types::CoordinatesType, null: false # custom objects
    field :publication_years, [Integer], null: false # custom objects
  end
end
