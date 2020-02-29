class CycleJournal < ApplicationRecord

  belongs_to :cycle
  belongs_to :journal
  has_many :entries, dependent: :destroy

  has_many :questions, through: :journal
end
