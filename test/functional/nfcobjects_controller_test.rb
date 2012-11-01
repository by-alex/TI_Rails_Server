require 'test_helper'

class NfcobjectsControllerTest < ActionController::TestCase
  setup do
    @nfcobject = nfcobjects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nfcobjects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nfcobject" do
    assert_difference('Nfcobject.count') do
      post :create, nfcobject: { description: @nfcobject.description, name: @nfcobject.name, nfctype: @nfcobject.nfctype }
    end

    assert_redirected_to nfcobject_path(assigns(:nfcobject))
  end

  test "should show nfcobject" do
    get :show, id: @nfcobject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nfcobject
    assert_response :success
  end

  test "should update nfcobject" do
    put :update, id: @nfcobject, nfcobject: { description: @nfcobject.description, name: @nfcobject.name, nfctype: @nfcobject.nfctype }
    assert_redirected_to nfcobject_path(assigns(:nfcobject))
  end

  test "should destroy nfcobject" do
    assert_difference('Nfcobject.count', -1) do
      delete :destroy, id: @nfcobject
    end

    assert_redirected_to nfcobjects_path
  end
end
