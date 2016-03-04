class WinesController < ApplicationController
    before_action :authenticate_user!

    def index
         @wines = Wine.all

         render :json => @wines, :include =>[{:wine_taste_profile =>{:except =>[:id, :created_at, :updated_at]}}], :except => [:created_at, :updated_at]
    end

    def show
     
     render status: 200, :json => set_wine

    end


    private
      def set_wine
        @wine = Wine.find(params[:id])
      end

      def wine_params
        params.require(:wine).permit(:name, :grape, :year, :region, :label, :wine_type, :supplier)
      end

end