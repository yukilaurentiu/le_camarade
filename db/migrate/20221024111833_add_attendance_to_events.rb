class AddAttendanceToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :attendance, :boolean
  end
end
