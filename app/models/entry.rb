class Entry < ApplicationRecord
  serialize :entry_details, JSON
  belongs_to :cycle_journal

end
