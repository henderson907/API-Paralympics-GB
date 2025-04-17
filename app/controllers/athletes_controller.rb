class AthletesController < ApplicationController
  def index
    @athletes = Athlete.all
    render json: @athletes, status: 200
  end

  def show
    @athlete = athlete.find_by(id: params[:id])
    if @athlete
      render json: @athlete, status: 200
    else
      render json: { error: "Hmm, we couldn't find that athlete." }
    end
  end

  def create
    athlete = Athlete.new(
      name: athlete_params[:name]
    )
    if athlete.save
      render json: athlete, status: 200
    else
      render json: { error: "Sorry, there was an error creating this athlete." }
    end
  end

  private

  def athlete_params
    params.require(:athlete).permit([
      :name, :classification, :image_url, :sport_id
    ])
  end
end
