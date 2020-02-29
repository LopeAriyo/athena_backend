class CycleJournalsController < ApplicationController

    def create
        user = get_current_user
        cycle = user.current_cycle
        journal = Journal.find(params[:journal_id])
    
        cycle_journal = CycleJournal.create(cycle: cycle, journal: journal)
    
        render json: cycle_journal
    
    end

    def show
        cycle_journal = CycleJournal.find(params[:id])

        if cycle_journal
            render json: cycle_journal
        else
            render json: { error: 'You are not authorized.' }, status: 401
        end
    end

    def destroy
        cycle_journal = CycleJournal.find(params[:id])
        cycle_journal.destroy
    end

end
