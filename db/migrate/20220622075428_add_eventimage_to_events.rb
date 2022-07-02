class AddEventimageToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :eventimage, :string
  end
end
