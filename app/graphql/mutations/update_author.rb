# frozen_string_literal: true

module Mutations
  class UpdateAuthor < GraphQL::Schema::Mutation
    null true

    argument :author, Types::AuthorInputType, required: true

    def resolve(author:)
      existing = Author.find_by(id: author[:id])
      existing&.update(author.to_h)
    end
  end
end
