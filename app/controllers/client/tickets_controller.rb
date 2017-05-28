class Client::TicketsController < Client::BaseController

  before_action :authenticate_user!
  before_action :set_ticket, only: [:show, :destroy]

  def index
    @tickets = current_user.tickets
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = current_user.tickets.new(ticket_params)

    if @ticket.save
      redirect_to client_tickets_path, notice: 'Операция покупки прошла успешна'
    else
      redirect_to client_search_path
    end
  end

  def destroy
    @ticket.destroy
    redirect_to client_tickets_path, notice: 'Ваш билет был успешно анулирован'
  end

  private

  def set_ticket
    @ticket = current_user.tickets.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit :start_station_id, :end_station_id,
                                   :first_name, :last_name, :passport, :train_id
  end

end
