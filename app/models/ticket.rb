class Ticket < ApplicationRecord

  belongs_to :train
  belongs_to :user, optional: true
  belongs_to :start_station, class_name: 'RailwayStation'
  belongs_to :end_station, class_name: 'RailwayStation'

  after_create :send_buy_notification
  after_destroy :send_delete_notification


  def route_name
    "#{start_station.title} - #{end_station.title}"
  end

  private

  def send_delete_notification
    TicketsMailer.delete_ticket(self.user, self).deliver_now
  end

  def send_buy_notification
    TicketsMailer.buy_ticket(self.user, self).deliver_now
  end

end
