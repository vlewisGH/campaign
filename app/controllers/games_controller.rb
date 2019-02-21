class GamesController < ApplicationController
    before_action :require_user
    before_action :current_user

    def show
        @user = User.find(session[:user_id])
        @games = @user.games 
        @game = @games.find(params[:id])
    end

    def new
        @user = User.find(session[:user_id])
        @game = @user.games.new
    end

    def create
        @user = User.find(session[:user_id])
        @game = @user.games.new(games_params)
            if @game.save 
                redirect_to 'show'
            else
                render 'new'
            end
    end
    def destroy
        @game = Game.find(params[:id])
        @game.destroy
        redirect_to '/'
    end
    private
        def games_params
            params.require(:game).permit(:name, :lore, :genre => [])
        end

end
