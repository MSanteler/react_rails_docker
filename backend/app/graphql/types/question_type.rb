Types::QuestionType = GraphQL::ObjectType.define do
  name "Question"
  description "A question"
  # `!` marks a field as "non-null"
  field :id, !types.ID
  field :question_text, !types.String
  field :answer_options, types[!Types::AnswerOptionType]
end
