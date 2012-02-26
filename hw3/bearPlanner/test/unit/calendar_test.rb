require 'test_helper'

class CalendarTest < ActiveSupport::TestCase

    test "Calendars must have a name" do
        testCalendar = Calendar.new
        assert_equal(false, testCalendar.save)
    end

    test "Calendar without description saves correctly" do
        testCalendar = Calendar.new
        testCalendar.calendar_name = "New Test Calendar"
        assert_equal(true, testCalendar.save)
    end

    test "Calendar with a description saves correctly" do
        testCalendar = Calendar.new
        testCalendar.calendar_name = "New Test Calendar"
        assert_equal(true, testCalendar.save)
    end

  # test "the truth" do
  #   assert true
  # end
end
