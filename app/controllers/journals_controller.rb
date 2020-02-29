class JournalsController < ApplicationController

    def index
        journals = Journal.all

        if journals
            render json: journals
        else
            render  status: 401
        end

    end

    def show
        journal = Journal.find(params[:id])

        if journal
            render json: journal, status: 200
        else
            render json: { error: 'You are not authorized.' }, status: 401
        end
    end

end
