class MaterialsController < ApplicationController
    before_action :current_user
    before_action :require_user
    before_action :before_actions
    def new 
        @materials = @materials.new
    end
    
    def create
        @material = @materials.new(material_params)
            if @map.save
                redirect_to game_path(@game)
            else
                render 'new'
            end
    end

    private
        def material_params
            params.require(:material).permit(:name, :physical_resistance, :fire_resistance, :lightning_resistance, :ice_resistance, :water_resistance, :earth_resistance, :dark_resistance, :magic_resistance)
        end
        def before_actions
            @user = User.find(session[:user_id])
            @games = @user.games
            @game = @games.find(params[:id])
            @materials = @game.materials
        end
end