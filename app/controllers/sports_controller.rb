class SportsController < ApplicationController
  def index
    @sports = Sport.all
    render json: @sports, status: 200
  end

  def show
    @sport = Sport.find_by(id: params[:id])
    if @sport
      render json: @sport, status: 200
    else
      render json: { error: "Hmm, we couldn't find that sport." }
    end
  end

  def create
    sport = Sport.new(
      name: sport_params[:name]
    )
    if sport.save
      render json: sport, status: 200
    else
      render json: { error: "Sorry, there was an error creating this sport." }
    end
  end

  private

  def sport_params
    params.require(:sport).permit([
      :name
    ])
  end
end
