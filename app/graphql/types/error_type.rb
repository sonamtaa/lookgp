# frozen_string_literal: true

module Types
  class ErrorType < Types::BaseObject
    description "An ActiveRecord Errors"

    field :field_name, String, null: false, camelize: false
    field :errors, [String], null: false
  end
end
