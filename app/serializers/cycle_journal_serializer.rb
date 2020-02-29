class CycleJournalSerializer < ActiveModel::Serializer
  attributes :id, :category, :questions, :latest_entry
  belongs_to :cycle
  # has_many :entries
  # has_many :questions

  def questions
    object.questions.map do |question|
      QuestionSerializer.new(question)
    end
  end

  def latest_entry
    object.entries.last
  end

  def category
    object.journal.category
  end

end
