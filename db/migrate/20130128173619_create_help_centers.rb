class CreateHelpCenters < ActiveRecord::Migration
  def change
    create_table :help_centers do |t|
      t.string :name
      t.text :description
      t.belongs_to :event

      t.timestamps
    end
    add_index :help_centers, :event_id
  end
end
