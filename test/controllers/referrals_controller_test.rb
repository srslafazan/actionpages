require 'test_helper'

class referralpagesControllerTest < ActionController::TestCase
  setup do
    @referralpage = referralpages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:referralpages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create referralpage" do
    assert_difference('referralpage.count') do
      post :create, referralpage: { bottomsub: @referralpage.bottomsub, navcolor: @referralpage.navcolor, rbackgroundcolor: @referralpage.rbackgroundcolor, rboxcolor: @referralpage.rboxcolor, rcountcolor: @referralpage.rcountcolor, reward1: @referralpage.reward1, reward2: @referralpage.reward2, reward3: @referralpage.reward3, reward4: @referralpage.reward4, rheadline: @referralpage.rheadline, rheadlinecolor: @referralpage.rheadlinecolor, rhow: @referralpage.rhow, rhowcolor: @referralpage.rhowcolor, rightcolor: @referralpage.rightcolor, rightheadline: @referralpage.rightheadline, rightsub: @referralpage.rightsub }
    end

    assert_redirected_to referralpage_path(assigns(:referralpage))
  end

  test "should show referralpage" do
    get :show, id: @referralpage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @referralpage
    assert_response :success
  end

  test "should update referralpage" do
    patch :update, id: @referralpage, referralpage: { bottomsub: @referralpage.bottomsub, navcolor: @referralpage.navcolor, rbackgroundcolor: @referralpage.rbackgroundcolor, rboxcolor: @referralpage.rboxcolor, rcountcolor: @referralpage.rcountcolor, reward1: @referralpage.reward1, reward2: @referralpage.reward2, reward3: @referralpage.reward3, reward4: @referralpage.reward4, rheadline: @referralpage.rheadline, rheadlinecolor: @referralpage.rheadlinecolor, rhow: @referralpage.rhow, rhowcolor: @referralpage.rhowcolor, rightcolor: @referralpage.rightcolor, rightheadline: @referralpage.rightheadline, rightsub: @referralpage.rightsub }
    assert_redirected_to referralpage_path(assigns(:referralpage))
  end

  test "should destroy referralpage" do
    assert_difference('referralpage.count', -1) do
      delete :destroy, id: @referralpage
    end

    assert_redirected_to referralpages_path
  end
end
