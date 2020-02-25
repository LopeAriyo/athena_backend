class CycleJournal < ApplicationRecord
  belongs_to :cycle
  belongs_to :journal
  has_many :entries
end
