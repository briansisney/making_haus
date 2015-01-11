class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :week, index: true
      t.references :user, index: true
      t.date :arrival_date
      t.date :departure_date
      t.time :arrival_time

      t.timestamps null: false
    end
    add_foreign_key :schedules, :weeks
    add_foreign_key :schedules, :users
  end
end
