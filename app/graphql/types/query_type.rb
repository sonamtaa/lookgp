# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
                               description: 'An example field added by the generator'

    def test_field
      'Hello World!'
    end

    field :author, Types::AuthorType, null: true,
                                      description: 'Returns the Author with the given id' do
      argument :id, ID, required: true
    end

    field :authors, [Types::AuthorType], null: false, description: 'Returns the List of Authors'

    def authors
      Author.all
    end
  end
end
