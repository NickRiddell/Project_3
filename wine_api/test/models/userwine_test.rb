require 'test_helper'

class UserwineTest < ActiveSupport::TestCase
  test "it has a user_id" do
    assert_equal 1, userwines(:one).user_id 
  end

  test "it requires user_id" do
    no_user_id_userwines = Userwine.new
    assert_not no_user_id_userwines.save
  end

  test "it has a wine_id" do
    assert_equal 1, userwines(:one).wine_id 
  end

  test "it requires wine_id" do
    no_wine_id_userwines = Userwine.new
    assert_not no_wine_id_userwines.save
  end

  test "it has notes" do
    assert_equal "Mmmmm, yummy!", userwines(:one).notes
  end

end
