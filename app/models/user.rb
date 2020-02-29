class User < ApplicationRecord
    has_secure_password
    has_many :cycles, dependent: :destroy

    def current_cycle
        cycles.find {|cycle| cycle.active_cycle == true} 
    end

    def last_cycle
        all_previous_cycles = cycles.find_all {|cycle| cycle.active_cycle == false} 
        all_previous_cycles.last
    end

    def token
        issue_token({ id: self.id })
    end
    
    private

    def issue_token(data)
        JWT.encode(data, secret)
    end

    def secret
        ENV['MY_SECRET']
    end
end
