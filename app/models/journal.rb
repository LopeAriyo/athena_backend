class Journal < ApplicationRecord
    has_many :cycle_journals
    has_many :questions
end
