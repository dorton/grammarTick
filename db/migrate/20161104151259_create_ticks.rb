class CreateTicks < ActiveRecord::Migration[5.0]
  def change
    create_table :ticks do |t|
      t.boolean :new_tick
      t.string :detail
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
