require 'test_helper'

class WineTasteProfileTest < ActiveSupport::TestCase

test "it has a wine id" do
  assert_equal 1, wine_taste_profiles(:one).wine_id 
end

  test "it has a value 1" do
    assert_equal 50, wine_taste_profiles(:one).value1 
  end

  test "it requires value1" do
    no_value1_wine_taste_profile = WineTasteProfile.new
    assert_not no_value1_wine_taste_profile.save
  end

  test "it has a value 2" do
    assert_equal 50, wine_taste_profiles(:one).value2 
  end

  test "it requires value2" do
    no_value2_wine_taste_profile = WineTasteProfile.new
    assert_not no_value2_wine_taste_profile.save
  end

  test "it has a value 3" do
    assert_equal 75, wine_taste_profiles(:one).value3 
  end

  test "it requires value3" do
    no_value3_wine_taste_profile = WineTasteProfile.new
    assert_not no_value3_wine_taste_profile.save
  end

  test "it has a value 4" do
    assert_equal 25, wine_taste_profiles(:one).value4
  end

  test "it requires value4" do
    no_value4_wine_taste_profile = WineTasteProfile.new
    assert_not no_value4_wine_taste_profile.save
  end

  test "it has a value 5" do
    assert_equal 100, wine_taste_profiles(:one).value5
  end

  test "it requires value5" do
    no_value5_wine_taste_profile = WineTasteProfile.new
    assert_not no_value5_wine_taste_profile.save
  end
end
