require 'test_helper'

class UsersTest < ActiveSupport::TestCase

    test "Users must have a name" do
        testUser = Users.new
        assert_equal(false, testUser.save)
    end

    test "Users can have no password" do
        testUser = Users.new
        testUser.name = "Peter Griffin"
        assert_equal(true, testUser.save)
    end

    test "Users can have a password" do
        testUser = Users.new
        testUser.name = "Glen Quagmire"
        testUser.password = "Giggity"
        assert_equal(true, testUser.save)
    end

    test "Two users cannot have the same name" do
        testUser = Users.new
        testUser.name = "Glen Quagmire"
        testUser.password = "Giggity"
        testUser2 = Users.new
        testUser2.name = "Glen Quagmire"
        testUser2.password = "GiggityGoo"
        assert_equal(true, testUser.save)
        assert_equal(false, testUser2.save)
    end

    #test "Users can have calendars" do
    #    users(:LessSimpleUser).calendars << calendar(:BoringCalendar)
    #    assert_equal(true, users(:LessSimpleUser).save)
    #end

end
