class CyclesController < ApplicationController

    def index
        user = get_current_user
        cycles = user.cycles

        if cycles
            render json: cycles 
        else
            render json: { error: 'You are not authorized.' }, status: 401
        end

    end

    def current_cycle
        user = get_current_user
        cycle = user.current_cycle

        if cycle
            render json: cycle, status: 200
        else
            render json: { error: 'You are not authorized.' }, status: 401
        end
    end


end
