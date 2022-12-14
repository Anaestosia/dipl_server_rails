module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.



    field :users, [UserType], null: false, description: 'List of all users'
    def users
      User.all
    end

    field :user, Types::UserType, null: false, description: 'Get specific user' do
      argument :id, ID, required: true
    end
    def user(id:)
      User.find(id)
    end


  end
end
