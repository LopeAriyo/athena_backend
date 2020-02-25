class Journal < ApplicationRecord
    has_many :cycle_journals
    has_many :questions
  has_many :cycles, through: :cycle_journals 
end
