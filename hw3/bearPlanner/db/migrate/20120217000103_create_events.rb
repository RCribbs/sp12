class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
        t.string :event_name #Create the event name column
        t.integer :start_time #Create the start time column
        t.integer :end_time #Create the end time column
      t.timestamps
    end
  end
end
