class EntriesController < ApplicationController
  def create
    cycle_journal = CycleJournal.find(params[:cycle_journal_id])

    entry = Entry.new(date: Date.today, cycle_journal: cycle_journal, entry_details: params[:responses])


  end
end
