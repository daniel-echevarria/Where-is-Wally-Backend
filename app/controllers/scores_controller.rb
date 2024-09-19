class ScoresController < ApplicationController
  def index
    scores = Score.all
    render json: scores
  end

  def create
    score = Score.create(score_params)
    render json: score, status: :created
  end

  private

  def score_params
    params.require(:score).permit(:name)
  end
end
