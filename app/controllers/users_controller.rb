class UsersController < ApplicationController
    # def signup
    #     newUser = User.create(user_params)
    #     render json: { id: user.id, email:  user.email, first_name:  user.first_name, last_name:  user.last_name,  token: issue_token({ id: user.id }) }
    # end 

    def validate
        user = get_current_user
        if user
            render json: user
        else
            render json: { error: 'You are not authorized.' }, status: 401
        end
    end

    def signin
        user = User.find_by(email: params[:email])

        if user && user.authenticate(params[:password])
            # render json: { id: user.id, email:  user.email, first_name:  user.first_name, last_name:  user.last_name, token: issue_token({ id: user.id }) }
            render json: user
        else
            render json: {error: "E-mail Address or Password Invalid"}, status: 403
        end

    end

    # def cycles
    #     user = get_current_user
    #     cycles = user.cycles

    #     if cycles
    #         render json: cycles 
    #     else
    #         render json: { error: 'You are not authorized.' }, status: 401
    #     end

    # end

    # def current_cycle
    #     user = get_current_user
    #     cycle = user.cycles.last

    #     if cycle
    #         render json: cycle, include: [:cycle_journals]
    #     else
    #         render json: { error: 'You are not authorized.' }, status: 401
    #     end

    # end


end
