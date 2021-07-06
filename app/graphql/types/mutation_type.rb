# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_author, Types::AuthorType, mutation: Mutations::CreateAuthor, description: 'Create Author'
    field :update_author, Types::AuthorType, mutation: Mutations::UpdateAuthor, description: 'Update Author'
    # FIXME: with proper response after updation
  end
end
