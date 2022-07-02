class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :eventname
      t.string :first_day
      t.string :last_day
      t.string :place
      t.string :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
