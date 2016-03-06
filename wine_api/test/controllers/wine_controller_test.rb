require 'test_helper'

class WinesControllerTest < ActionController::TestCase
    include Devise::TestHelpers

    setup do
        @wine = wines(:one)
    end

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

    test "should create wine" do
        sign_in users(:one)
        assert_difference('Wine.count') do
            post :create, wine: {name: 'Some wine', grape: 'Some grape', year: '2015'}
    end
        assert_response 201
    end

    test "should update wine" do
        sign_in users(:one)
        put :update, id: @wine, wine: { name: @wine.name, grape: @wine.grape, year: @wine.year }
        assert_response 204
    end

    test "should destroy wine" do
        sign_in users(:one)
        assert_difference('Wine.count', -1) do
            delete :destroy, id: @wine
        end
        assert_response 204
        end
    end
