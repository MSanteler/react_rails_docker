Types::AnswerOptionType = GraphQL::ObjectType.define do
  name "AnswerOption"

  field :id, !types.ID
  field :precode, !types.Int
  field :label, !types.String
end
