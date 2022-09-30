class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :fullname
      t.integer :batch_number
      t.text :biography
      t.text :contact_info
      t.string :company
      t.string :location
      t.text :skills
      t.text :hobby

      t.timestamps
    end
  end
end
