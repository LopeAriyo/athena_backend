class Cycle < ApplicationRecord
  belongs_to :user
  has_many :cycle_journals, dependent: :destroy
  has_many :journals, through: :cycle_journals 
end
