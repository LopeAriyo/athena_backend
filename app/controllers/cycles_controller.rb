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

    def create 
        user = get_current_user
    
        cycle = Cycle.create(active_cycle: params[:active_cycle], start_date: params[:start_date], estimated_cycle_length: params[:estimated_cycle_length], cycle_length: params[:cycle_length], estimated_period_length: params[:estimated_period_length], period_length: params[:period_length], user: user)

        render json: cycle

    end 

    def current_cycle
        user = get_current_user
        cycle = user.current_cycle
        last_cycle = user.last_cycle

        if cycle
            render json: cycle, status: 200
        else
            render json: { error: 'You are not authorized.' }, status: 401
        end
    end

    def update_current_cycle

        user = get_current_user
        cycle = user.current_cycle

        cycle.update(active_cycle: params[:active_cycle], cycle_length: params[:cycle_length])
    
        render json: cycle
    
    end

    def update_last_cycle

        user = get_current_user
        cycle = user.last_cycle

        cycle.update(active_cycle: params[:active_cycle])
    
        render json: cycle
    
    end

    def destroy
        cycle = Cycle.find(params[:id])
        cycle.destroy

    end  


    private 

    def cycle_params
        params.require(:cycle).permit(:active_cycle, :start_date, :estimated_cycle_length, :cycle_length, :estimated_period_length, :period_length)
    end

end
