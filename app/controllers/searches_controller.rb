class SearchesController < ApplicationController
  def index
    if search_params.present? && search_params[:start_station_id].present? &&  search_params[:end_station_id].present?
      @tickets = Ticket.where(start_station_id: search_params[:start_station_id], end_station_id: search_params[:end_station_id])
    end
  end

  def search_params
    params[:searches]
  end
end
