class SportsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :search_sport, only: [:index, :search, :show]

  def index
    @sports = Sport.all
    @sport = Sport.order("created_at DESC")
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

  def show
    @sport = Sport.find(params[:id])
    @message = Message.new
    @messages = @sport.messages.includes(:user)
  end

  def edit
    @sport = Sport.find(params[:id])
  end

  def update
    @sport = Sport.find(params[:id])
    if @sport.update(sport_params)
      redirect_to sport_path(@sport)
    else
      render :edit
    end
  end

  def destroy
    if @sport.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  def search
    @results = @p.result.includes(:category)
  end

  private

  def sport_params
    params.require(:sport).permit(:title, :sport_text, :category_id, :area_id, :price, :image).merge(user_id: current_user.id)
  end

  def search_sport
    @p = Sport.ransack(params[:q])
  end
end