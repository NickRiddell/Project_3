require 'test_helper'

class UserTasteProfileTest < ActiveSupport::TestCase

    test "it has a user id" do
      assert_equal 1, user_taste_profiles(:one).user_id 
    end

    test "it has a value 1" do
      assert_equal 25, user_taste_profiles(:one).value1 
    end

    test "it requires value1" do
      no_value1_user_taste_profile = UserTasteProfile.new
      assert_not no_value1_user_taste_profile.save
    end

    test "it has a value 2" do
      assert_equal 50, user_taste_profiles(:one).value2 
    end

    test "it requires value2" do
      no_value2_user_taste_profile = UserTasteProfile.new
      assert_not no_value2_user_taste_profile.save
    end

    test "it has a value 3" do
      assert_equal 75, user_taste_profiles(:one).value3 
    end

    test "it requires value3" do
      no_value3_user_taste_profile = UserTasteProfile.new
      assert_not no_value3_user_taste_profile.save
    end

    test "it has a value 4" do
      assert_equal 25, user_taste_profiles(:one).value4
    end

    test "it requires value4" do
      no_value4_user_taste_profile = UserTasteProfile.new
      assert_not no_value4_user_taste_profile.save
    end

    test "it has a value 5" do
      assert_equal 100, user_taste_profiles(:one).value5
    end

    test "it requires value5" do
      no_value5_user_taste_profile = UserTasteProfile.new
      assert_not no_value5_user_taste_profile.save
    end

end
