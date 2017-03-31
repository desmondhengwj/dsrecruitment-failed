class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :location
      t.date :date
      t.time :start_time
      t.time :end_time
      t.integer :no_of_slots
      t.integer :rate_per_hour
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
