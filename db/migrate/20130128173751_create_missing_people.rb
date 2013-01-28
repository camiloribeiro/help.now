class CreateMissingPeople < ActiveRecord::Migration
  def change
    create_table :missing_people do |t|
      t.text :name
      t.text :information
      t.belongs_to :event

      t.timestamps
    end
    add_index :missing_people, :event_id
  end
end
