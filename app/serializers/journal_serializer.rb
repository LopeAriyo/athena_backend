class JournalSerializer < ActiveModel::Serializer
  attributes :id, :category
  # has_many :cycle_journals, include: :cycles
  has_many :questions
end

