# frozen_string_literal: true

module Mutations
  class CreateAuthor < GraphQL::Schema::Mutation
    null true

    argument :author, Types::AuthorInputType, required: true

    def resolve(author:)
      Author.create(author.to_h)
    end
  end
end
