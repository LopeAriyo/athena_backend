class CycleJournalSerializer < ActiveModel::Serializer
  attributes :id, :category, :questions
  belongs_to :cycle
  has_many :entries
  # has_many :questions

  def questions
    object.questions.map do |question|
      QuestionSerializer.new(question)
    end
  end

  def category
    object.journal.category
  end

end
