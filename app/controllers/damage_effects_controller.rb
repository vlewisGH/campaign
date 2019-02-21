class MaterialsController < ApplicationController
    before_action :current_user
    before_action :require_user
    before_action :before_actions

    def new 
        @damage_effect = @damage_effects.new
    end
    
    def create
        @damage_effect = @damage_effects.new(damage_effect_params)
            if @damage_effect.save
                redirect_to game_path(@game) 
            else
                render 'new'  
            end
    end

    private
        def stat_effect_params
            params.require(:damage_effect).permit(:name, :base_damage, :element, :duration)
        end
        
        def before_actions
            @user = User.find(session[:user_id])
            @games = @user.games
            @game = @games.find(params[:id])
            @damage_effects = @game.damage_effects
        end
end

