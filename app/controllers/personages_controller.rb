class PersonagesController < ApplicationController
  def index
    personages = Personage.all
    personages_names = personages.map(&:name)
    render(json: personages_names)
  end

  def check
    params = check_params
    personage = Personage.find_by(name: params[:name])
    puts "this is the personage #{personage}"
    puts "this is the x coordinates in the database #{personage[:x]}"
    puts "this is the coordinates #{params[:coordinates]}"
    puts "this is circle_radius #{params[:circle_radius]}"
    answer = personage.in_circle?(params[:coordinates], params[:circle_radius])
    puts "this is the answer #{answer}"
    render(json: answer)
  end

  private

  def check_params
    params.permit('name', 'circle_radius', coordinates: {})
  end
end
