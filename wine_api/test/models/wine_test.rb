require 'test_helper'

class WineTest < ActiveSupport::TestCase
  test "it has a name" do
    assert_equal "TestWine1", wines(:one).name 
  end

  test "it requires a name" do
    no_name_wine = Wine.new
    assert_not no_name_wine.save
  end

  test "it has a grape" do
    assert_equal "Shiraz", wines(:one).grape 
  end

  test "it requires a grape" do
    no_grape_wine = Wine.new
    assert_not no_grape_wine.save
  end

  test "it has a year" do
    assert_equal 2013, wines(:one).year 
  end

  test "it requires a year" do
    no_year_wine = Wine.new
    assert_not no_year_wine.save
  end

  test "it has a region" do
    assert_equal "Australia", wines(:one).region
  end

  test "it has a label" do
    assert_equal "app/assets/images/Yellowtaillogo.png", wines(:one).label
  end

  test "it has a type" do
    assert_equal "Red", wines(:one).wine_type
  end

  test "it has a supplier" do
    assert_equal "Sainsburys", wines(:one).supplier
  end

end
