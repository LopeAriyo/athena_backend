class Question < ApplicationRecord
  belongs_to :journal
  has_many :options
end
