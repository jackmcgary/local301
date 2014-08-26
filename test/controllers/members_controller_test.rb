require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { address: @member.address, date_of_birth: @member.date_of_birth, facebook: @member.facebook, flickr: @member.flickr, hometown: @member.hometown, instagram: @member.instagram, joined_on: @member.joined_on, linkedin: @member.linkedin, name: @member.name, phone: @member.phone, pinterest: @member.pinterest, twitter: @member.twitter, website: @member.website, where_have_you_been: @member.where_have_you_been, where_will_you_go: @member.where_will_you_go }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    patch :update, id: @member, member: { address: @member.address, date_of_birth: @member.date_of_birth, facebook: @member.facebook, flickr: @member.flickr, hometown: @member.hometown, instagram: @member.instagram, joined_on: @member.joined_on, linkedin: @member.linkedin, name: @member.name, phone: @member.phone, pinterest: @member.pinterest, twitter: @member.twitter, website: @member.website, where_have_you_been: @member.where_have_you_been, where_will_you_go: @member.where_will_you_go }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end
