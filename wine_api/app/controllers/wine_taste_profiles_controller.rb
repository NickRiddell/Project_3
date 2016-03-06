class WineTasteProfilesController < ApplicationController
    before_action :authenticate_user!

    # GET /wine_taste_profiles
    # GET /wine_taste_profiles.json
    def index
        render json: WineTasteProfile.all.to_json()
    end

    # GET /wine_taste_profiles/1
    # GET /wine_taste_profiles/1.json
    def show
        render status: 200, :json => set_winetp
    end

    # POST /wine_taste_profiles
    # POST /wine_taste_profiles.json
    def create
       @winetp = WineTasteProfile.new(winetp_params)
       if @winetp.save
            @winetps = WineTasteProfile.all
            render status: 201, :json => @winetp
       else
            render status: 404,  json: { message: @winetp.errors}.to_json
       end
    end

    # PATCH/PUT /wine_taste_profiles/1
    # PATCH/PUT /wine_taste_profiles/1.json
    def update
        set_winetp
        if @winetp.update(winetp_params)
            render status: 204, :json => @winetp
        else
            render status: 404,  json: { message: @wine.errors}.to_json
        end
    end

    def destroy
        set_winetp
        @winetp.destroy
        @winetps = WineTasteProfile.all
        render status: 204, :json => @winetp
    end

    private
      def set_winetp
        @winetp = WineTasteProfile.find(params[:id])
      end

      def winetp_params
        params.require(:wine_taste_profile).permit(:wine_id, :value1, :value2, :value3, :value4, :value5)
      end
end
