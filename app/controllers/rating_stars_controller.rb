class RatingStarsController < ApplicationController
  before_action :authenticate_user!
  def update
  	@rating = RatingStar.find(params[:id])    
    if @rating.update_attributes(score: params[:score])
      	render json: {:status =>"succes"}
      # respond_to do |format|
      #   format.js
      # end
    end
  end

end
