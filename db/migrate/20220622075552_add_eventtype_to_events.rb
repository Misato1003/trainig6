class AddEventtypeToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :eventtype, :string
  end
end
