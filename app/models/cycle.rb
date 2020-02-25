class Cycle < ApplicationRecord
  belongs_to :user
  has_many :cycle_journals
end
