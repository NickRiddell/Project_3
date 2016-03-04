class WineTasteProfileController < ApplicationController
  def index
    render json: WineTasteProfile.all.to_json()
  end
end
