class WinesController < ApplicationController
    before_action :authenticate_user!
    def index
        render json: Wine.all.to_json()
    end
end