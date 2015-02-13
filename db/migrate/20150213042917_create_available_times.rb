class CreateAvailableTimes < ActiveRecord::Migration
  def change
    create_table :available_times do |t|
      t.belongs_to :user
      t.datetime :start_at
      t.datetime :end_at
      t.timestamps null: false
    end
    add_index :available_times, :start_at
    add_index :available_times, :end_at
  end
end
