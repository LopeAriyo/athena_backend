class CycleJournalsController < ApplicationController

    def show
        cycle_journal = CycleJournal.find(params[:id])

        if cycle_journal
            render json: cycle_journal
        else
            render json: { error: 'You are not authorized.' }, status: 401
        end
    end




end
