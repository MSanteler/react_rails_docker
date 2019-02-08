Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :question do
    type Types::QuestionType
    argument :id, !types.ID
    description "Find a Question by ID"
    resolve ->(obj, args, ctx) { Question.find(args["id"]) }
  end

  # queries are just represented as fields
  field :allQuestions, !types[Types::QuestionType] do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { Question.joins(:answer_options).distinct.all }
  end
end
