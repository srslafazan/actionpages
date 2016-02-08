require 'test_helper'

class ReferralPagesControllerTest < ActionController::TestCase
  setup do
    @referral_page = referral_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:referral_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create referral_page" do
    assert_difference('referral_page.count') do
      post :create, referral_page: { bottomsub: @referral_page.bottomsub, navcolor: @referral_page.navcolor, rbackgroundcolor: @referral_page.rbackgroundcolor, rboxcolor: @referral_page.rboxcolor, rcountcolor: @referral_page.rcountcolor, reward1: @referral_page.reward1, reward2: @referral_page.reward2, reward3: @referral_page.reward3, reward4: @referral_page.reward4, rheadline: @referral_page.rheadline, rheadlinecolor: @referral_page.rheadlinecolor, rhow: @referral_page.rhow, rhowcolor: @referral_page.rhowcolor, rightcolor: @referral_page.rightcolor, rightheadline: @referral_page.rightheadline, rightsub: @referral_page.rightsub }
    end

    assert_redirected_to referral+page_path(assigns(:referral_page))
  end

  test "should show referral page" do
    get :show, id: @referral_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @referral_page
    assert_response :success
  end

  test "should update referral page" do
    patch :update, id: @referral_page, referral_page: { bottomsub: @referral_page.bottomsub, navcolor: @referral_page.navcolor, rbackgroundcolor: @referral_page.rbackgroundcolor, rboxcolor: @referral_page.rboxcolor, rcountcolor: @referral_page.rcountcolor, reward1: @referral_page.reward1, reward2: @referral_page.reward2, reward3: @referral_page.reward3, reward4: @referral_page.reward4, rheadline: @referral_page.rheadline, rheadlinecolor: @referral_page.rheadlinecolor, rhow: @referral_page.rhow, rhowcolor: @referral_page.rhowcolor, rightcolor: @referral_page.rightcolor, rightheadline: @referral_page.rightheadline, rightsub: @referral_page.rightsub }
    assert_redirected_to referral_page_path(assigns(:referral_page))
  end

  test "should destroy referral page" do
    assert_difference('referral_page.count', -1) do
      delete :destroy, id: @referral_page
    end

    assert_redirected_to referral_pages_path
  end
end
