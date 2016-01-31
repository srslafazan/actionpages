require 'test_helper'

class ReferralsControllerTest < ActionController::TestCase
  setup do
    @referral = referrals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:referrals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create referral" do
    assert_difference('Referral.count') do
      post :create, referral: { bottomsub: @referral.bottomsub, navcolor: @referral.navcolor, rbackgroundcolor: @referral.rbackgroundcolor, rboxcolor: @referral.rboxcolor, rcountcolor: @referral.rcountcolor, reward1: @referral.reward1, reward2: @referral.reward2, reward3: @referral.reward3, reward4: @referral.reward4, rheadline: @referral.rheadline, rheadlinecolor: @referral.rheadlinecolor, rhow: @referral.rhow, rhowcolor: @referral.rhowcolor, rightcolor: @referral.rightcolor, rightheadline: @referral.rightheadline, rightsub: @referral.rightsub }
    end

    assert_redirected_to referral_path(assigns(:referral))
  end

  test "should show referral" do
    get :show, id: @referral
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @referral
    assert_response :success
  end

  test "should update referral" do
    patch :update, id: @referral, referral: { bottomsub: @referral.bottomsub, navcolor: @referral.navcolor, rbackgroundcolor: @referral.rbackgroundcolor, rboxcolor: @referral.rboxcolor, rcountcolor: @referral.rcountcolor, reward1: @referral.reward1, reward2: @referral.reward2, reward3: @referral.reward3, reward4: @referral.reward4, rheadline: @referral.rheadline, rheadlinecolor: @referral.rheadlinecolor, rhow: @referral.rhow, rhowcolor: @referral.rhowcolor, rightcolor: @referral.rightcolor, rightheadline: @referral.rightheadline, rightsub: @referral.rightsub }
    assert_redirected_to referral_path(assigns(:referral))
  end

  test "should destroy referral" do
    assert_difference('Referral.count', -1) do
      delete :destroy, id: @referral
    end

    assert_redirected_to referrals_path
  end
end
