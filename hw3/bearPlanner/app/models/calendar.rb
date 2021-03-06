class Calendar < ActiveRecord::Base
    belongs_to :users #Each user can create and view multiple calenders
    validates :calendar_name, :presence => true #Calendars must have a name, and can optionally have a description
    has_many :events #Calendar can holds multiple events
    validates_uniqueness_of :calendar_name, :scope => [:user_id] #Within the scope of a single user, calendar names are unique
end
