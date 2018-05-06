GraphQL::ObjectType.define do
	name 'Person'
	description '...' # Optionnal
	
	# Rename the field differenlty in the graphQL with property
	field :firstName, !types.String, property:  :first_name
	field :lastName, !types.String, property:  :last_name
	field :email, !types.String,
	field :username, !types.String,
	field :id, !types.String,
	field :friends do
		type -> { types[PersonType] }
		resolve -> (person, args, ctx) { person.friends }
	end
end

PersonType =

QueryType = GraphQL::ObjectType.define do
	name 'Query'
	description '...'
	
	field :person do
		type PersonType
		argument :id, !types.String
		# To resolve is to find a person, the id should be enough
		resolve -> (root, args, ctx) { Person.find(args[:id]) }
end

Schema = GraphQL::Schema.new(
	query: QueryType
)
