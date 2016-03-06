class WinesController < ApplicationController
    before_action :authenticate_user!

    # GET /wines
    # GET /wines.json
    def index
         @wines = Wine.all

         render :json => @wines, :include =>[{:wine_taste_profile =>{:except =>[:id, :created_at, :updated_at]}}], :except => [:created_at, :updated_at]
    end

    # GET /wines/1
    # GET /wines/1.json
    def show
     
        render status: 200, :json => set_wine

    end

    # POST /wines
    # POST /wines.json
    def create
       @wine = Wine.new(wine_params)
       if @wine.save
            @wines = Wine.all
            render status: 201, :json => @wine
       else
            render status: 404,  json: { message: @wine.errors}.to_json
       end
    end

    # PATCH/PUT /wines/1
    # PATCH/PUT /wines/1.json
    def update
        set_wine
        if @wine.update(wine_params)
            render status: 204, :json => @wines, :include =>[{:wine_taste_profile =>{:except =>[:id, :created_at, :updated_at]}}], :except => [:created_at, :updated_at]
        else
            render status: 404,  json: { message: @wine.errors}.to_json
        end
    end

    def destroy
        set_wine
        @wine.destroy
        @wines = Wine.all
        render status: 204, :json => @wines, :include =>[{:wine_taste_profile =>{:except =>[:id, :created_at, :updated_at]}}], :except => [:created_at, :updated_at]
    end


    private
      def set_wine
        @wine = Wine.find(params[:id])
      end

      def wine_params
        params.require(:wine).permit(:name, :grape, :year, :region, :label, :wine_type, :supplier)
      end

end