require 'test_helper'

class WineTasteProfilesControllerTest < ActionController::TestCase
    include Devise::TestHelpers

    setup do
        @winetp = wine_taste_profiles(:one)
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
        get :show, id: WineTasteProfile.first.id
        assert_response :success
    end

    test "should create wine taste profile" do
        sign_in users(:one)
        assert_difference('WineTasteProfile.count') do
            post :create, wine_taste_profile: {wine_id: '2', value1: '25', value2: '50', value3: '75', value4: '75', value5: '25'}
    end
        assert_response 201
    end

    test "should update wine taste profile" do
        sign_in users(:one)
        put :update, id: @winetp, wine_taste_profile: { wine_id: @winetp.wine_id, value1: @winetp.value1, value2: @winetp.value2, value3: @winetp.value3, value4: @winetp.value4, value5: @winetp.value5 }
        assert_response 204
    end

    test "should destroy wine taste profile" do
        sign_in users(:one)
        assert_difference('WineTasteProfile.count', -1) do
            delete :destroy, id: @winetp
        end
        assert_response 204
    end

end
