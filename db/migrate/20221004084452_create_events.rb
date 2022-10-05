class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.date :start_time
      t.date :end_time
      t.bigint :user_id, null: false, foreign_key: true
      t.string :event_name
      t.string :location
      t.timestamps
    end
  end
end
