class AddReservationTime < ActiveRecord::Migration
  def change
  add_column :items, :reservation_time, :datetime
  end
end
