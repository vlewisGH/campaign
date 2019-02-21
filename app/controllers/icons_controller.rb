class IconsController < ApplicationController
    before_action :current_user
    before_action :require_user
    before_action :before_actions
    def new 
        @icon = @icons.new
    end
    
    def create
        @icon = @icons.new(icon_params)
            if @icon.save
                redirect_to game_path(@game)
            else
                render 'new'
            end

    end

    private
        def icon_params
            params.require(:icon).permit(:name, :type, :worldspace, :image)
        end
        def before_actions
            @user = User.find(session[:user_id])
            @games = @user.games
            @game = @games.find(params[:id])
            @icons = @game.icons
        end
end
