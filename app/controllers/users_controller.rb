class UsersController < ApplicationController
    def signup
        newUser = User.create(user_params)
        render json: { id: user.id, email:  user.email, first_name:  user.first_name, last_name:  user.last_name,  token: issue_token({ id: user.id }) }
    end 

    def signin
        user = User.find_by(email: params[:email])

        if user && user.authenticate(params[:password])
            render json: { id: user.id, email:  user.email, first_name:  user.first_name, last_name:  user.last_name, token: issue_token({ id: user.id }) }
        else
            render json: {error: "E-mail Address or Password Invalid"}, status: 403
        end
    end

    def validate
        user = get_current_user
        if user
            render json: { id: user.id, email:  user.email, first_name:  user.first_name, last_name:  user.last_name, token: issue_token({ id: user.id }) }
        else
            render json: { error: 'You are not authorized.' }, status: 401
        end
    end

    

end
