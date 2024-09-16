class PersonagesController < ApplicationController
  def index
    personages = Personage.all
    render(json: personages)
  end
end
