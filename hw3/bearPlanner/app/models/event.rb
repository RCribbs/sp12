class Event < ActiveRecord::Base
    validates_presence_of :event_name, :start_time, :end_time #Events must have a name, start and end time
end
