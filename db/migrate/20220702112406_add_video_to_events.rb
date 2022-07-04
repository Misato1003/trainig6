class AddVideoToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :video, :string
  end
end
