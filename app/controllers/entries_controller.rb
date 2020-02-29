class EntriesController < ApplicationController
  def create
    cycle_journal = CycleJournal.find(params[:cycle_journal_id])

    entry = Entry.create(date: params[:date], cycle_journal: cycle_journal, entry_details: params[:responses])

    render json: entry

  end

  def update
    entry = Entry.find(params[:id])
    entry.update(entry_details: params[:responses])

    render json: entry

  end
end
