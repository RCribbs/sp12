require 'test_helper'

class EventTest < ActiveSupport::TestCase

    test "Events must have all their attributes" do
        testEvent = Event.new
        assert_equal(false,  testEvent.save)
    end

    test "Events must have a end time" do
        testEvent = Event.new
        testEvent.event_name = "New Test Event"
        testEvent.end_time = 10
        assert_equal(false,  testEvent.save)
    end

    test "Events must have a start time" do
        testEvent = Event.new
        testEvent.event_name = "New Test Event"
        testEvent.end_time = 10
        assert_equal(false,  testEvent.save)
    end

    test "Events must have a name" do
        testEvent = Event.new
        testEvent.start_time = 1
        testEvent.end_time = 10
        assert_equal(false,  testEvent.save)
    end

    test "Events save correctly" do
        testEvent = Event.new
        testEvent.event_name = "New Test Event"
        testEvent.start_time = 1
        testEvent.end_time = 10
        assert_equal(true,  testEvent.save)
    end

end
