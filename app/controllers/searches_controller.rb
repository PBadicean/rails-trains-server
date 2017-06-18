
class SearchesController < ApplicationController
  def index
    if (params[:start_station] && params[:end_station]).present?
      @search = Search.new(params[:start_station], params[:end_station])
    end
  end
end
