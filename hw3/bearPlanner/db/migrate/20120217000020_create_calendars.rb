class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
        t.string :calendar_name #Add the name colum
        t.string :description #Add the optional description colum
      t.timestamps
    end
  end
end
