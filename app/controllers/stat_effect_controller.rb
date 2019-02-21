class MaterialsController < ApplicationController
    before_action :current_user
    before_action :require_user
    before_action :before_actions

    def new 
        @stat_effect = @stat_effects.new
    end
    
    def create
        @stat_effect = @stat_effects.new(stat_effect_params)
            if @stat_effect.save
                redirect_to game_path(@game)
            else
                render 'new'
            end
    end

    private
        def stat_effect_params
            params.require(:stat_effect).permit(:name, :stat, :adjustment, :duration)
        end
        
        def before_actions
            @user = User.find(session[:user_id])
            @games = @user.games
            @game = @games.find(params[:id])
            @stat_effects = @game.stat_effects
        end
end
