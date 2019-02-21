class AdventuresController < ApplicationController
    before_action :current_user

    def index
        @adventures = Adventure.all
    end
    
    def show
        @adventure = Adventure.find(params[:id])
    end

    def new
        @adventure = Adventure.new
    end

    def create
        @user = User.find(session[:user_id])
        @games = @user.games
        @game = @games.find(params[:id])
        @adventures = @game.adventures
        @adventure = @adventures.new(adventure_params)
            if @adventure.save
                redirect_to game_path(@game)
            else
                render 'new'
            end
    end

    def destroy

    end
    private 
        def adventure_params
            params.require(:adventure).permit(:name)
        end
end
