class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :prompt, :key
  has_many :options

end
