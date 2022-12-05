class AddTripToStopover < ActiveRecord::Migration[7.0]
  def change
    add_reference :stopovers, :trip, null: false, foreign_key: true
  end
end
