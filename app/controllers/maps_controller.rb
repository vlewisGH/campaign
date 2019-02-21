class MapsController < ApplicationController
    before_action :current_user
    before_action :require_user
    before_action :before_actions
    def new 
        @map = @maps.new
    end
    
    def create
        @map = @maps.new(map_params)
            if @map.save
                redirect_to game_path(@game)
            else
                render 'new'
            end

    end

    private
        def map_params
            params.require(:map).permit(:name, :map_type, :scale, :image)
        end
        def before_actions
            @user = User.find(session[:user_id])
            @games = @user.games
            @game = @games.find(params[:id])
            @maps = @game.maps
        end
end
