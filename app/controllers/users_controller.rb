class UsersController < ApplicationController
    before_action :current_user

    def index
        @users = User.all 
        @games = Game.all
    end
    def show
        @user = User.find(params[:id])
        @myGames = @user.games
        @newGame = Game.new
    end
    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params)
            if @user.save
                session[:user_id] = @user.id
                redirect_to '/'
            else 
                render 'new'
            end
    end
    def edit
        @user = User.find(params[:id])
    end
    def update
        @user = User.find(params[:id])
        if @user.update_attributes(user_params)
            redirect_to user_path(@user)
        else
            flash.now[:alert] = 'Error, no photos uploaded'
        end
    end
    
    private
        def user_params
            params.require(:user).permit(:first_name, :last_name, :username, :photo, :password)
        end
end
