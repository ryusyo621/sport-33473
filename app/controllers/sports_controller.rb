class SportsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
  end

  def new
    @sport = Sport.new
  end

  def create
    @sport = Sport.new(sport_params)
    if @sport.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
  def sport_params
    params.require(:sport).permit(:sport_name, :sport_text, :category_id, :state_id, :area_id, :price_pattern, :price, :image).merge(user_id: current_user.id)
  end
end
