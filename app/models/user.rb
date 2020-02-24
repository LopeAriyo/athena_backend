class User < ApplicationRecord
    has_secure_password
    has_many :cycles
    has_many :trackers, through: :cycles
end
