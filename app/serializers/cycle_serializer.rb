class CycleSerializer < ActiveModel::Serializer
  attributes :start_date, :estimated_cycle_length, :cycle_length, :estimated_period_length, :period_length
  has_many :cycle_journals

end
