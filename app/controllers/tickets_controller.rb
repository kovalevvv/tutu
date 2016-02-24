class TicketsController < ApplicationController
before_action :set_ticket, only: [:destroy, :edit, :update]

  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def edit
  end

  def update
    if @ticket.update(ticket_params)
      redirect_to tickets_url, notice: 'Изменен билет'
    else
      render :edit
    end
  end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      redirect_to tickets_url, notice: 'Билет продан'
    else
      render :new
    end
  end

  def destroy
      @ticket.destroy
      redirect_to ticketes_url, notice: 'Билет сожжон!'
    end

    private

    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    def ticket_params
      params.require(:ticket).permit(:train_id, :start_railway_station_id, :stop_railway_station_id, :fio)
    end
end