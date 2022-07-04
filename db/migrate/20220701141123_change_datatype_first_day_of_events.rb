class ChangeDatatypeFirstDayOfEvents < ActiveRecord::Migration[6.1]
  def change
     change_column :events, :first_day, :datetime
  end
end
