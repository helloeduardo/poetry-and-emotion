class SearchController < ApplicationController
  def index
    @poems = PoemsFacade.poems_for(params[:author])
  end
end
