class G4Crud < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.date :date
      t.string :location
      t.text :description
      t.integer :capacity
      t.boolean :requires_id

      t.timestamps
    end
  end
end
