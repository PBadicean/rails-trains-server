class TicketsController < ApplicationController

  before_action :authenticate_user!, only: [:create, :edit]
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  def index
    @tickets = Ticket.all
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      redirect_to @ticket, notice: 'Операция покупки прошла успешна'
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @ticket.destroy
    redirect_to tickets_path, notice: 'Ваш билет был успешно анулирован'
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit :start_station_id, :end_station_id,
                                   :first_name, :last_name, :passport, :train_id
  end

end
