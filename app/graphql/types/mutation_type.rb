# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_author, Types::AuthorType, mutation: Mutations::CreateAuthor, description: 'Create Author'
    field :update_author, Types::AuthorType, mutation: Mutations::UpdateAuthor, description: 'Update Author'
    # FIXME: with proper response after updates

    field :delete_author, Boolean, null: false, description: 'Delete Author' do
      argument :id, ID, required: true
    end

    def delete_author(id:)
      Author.find_by(id: id).destroy!
      true
    end
  end
end
