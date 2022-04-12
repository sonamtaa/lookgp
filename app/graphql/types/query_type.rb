# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :author, Types::AuthorType, null: true,
                                      description: 'Returns the Author with the given id' do
      argument :id, ID, required: true
    end

    field :authors, [Types::AuthorType], null: false, description: 'Returns the List of Authors'

    def authors
      Author.all
    end

    def author(id:)
      Author.find(id)
    end
  end
end
