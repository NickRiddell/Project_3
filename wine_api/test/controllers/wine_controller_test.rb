require 'test_helper'

class WinesControllerTest < ActionController::TestCase
    include Devise::TestHelpers

    test "logged in should get index" do
        sign_in users(:one)
        get :index
        assert_response :success
      end

      test "not authenticated should get redirect" do
        get :index
        assert_response :redirect
      end

      test "logged in should get show" do
          sign_in users(:one)
          get :show, id: Wine.first.id
          assert_response :success
        end

end
