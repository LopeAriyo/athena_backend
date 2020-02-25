class User < ApplicationRecord
    has_secure_password
    has_many :cycles

    def current_cycle
        cycles.find {|cycle| cycle.cycle_length == nil}
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
