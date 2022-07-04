class ChangeDatatypeLastDayOfEvents < ActiveRecord::Migration[6.1]
  def change
    change_column :events, :last_day, :datetime
  end
end
