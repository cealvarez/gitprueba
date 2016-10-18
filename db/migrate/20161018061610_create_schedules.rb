class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :prof
      t.string :timestamp
      t.integer :patient

      t.timestamps null: false
    end
  end
end
