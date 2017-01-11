class CreateLogSheets < ActiveRecord::Migration
  def change
    create_table :log_sheets do |t|
      t.string :log_type
      t.decimal :value
      t.date :log_day
      t.time :log_time
      t.text :note
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
