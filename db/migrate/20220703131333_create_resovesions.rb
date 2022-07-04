class CreateResovesions < ActiveRecord::Migration[6.1]
  def change
    create_table :resovesions do |t|
      t.datetime :day
      t.string :people
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
