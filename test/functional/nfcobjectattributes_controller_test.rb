require 'test_helper'

class NfcobjectattributesControllerTest < ActionController::TestCase
  setup do
    @nfcobjectattribute = nfcobjectattributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nfcobjectattributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nfcobjectattribute" do
    assert_difference('Nfcobjectattribute.count') do
      post :create, nfcobjectattribute: { name: @nfcobjectattribute.name, nfcobject_id: @nfcobjectattribute.nfcobject_id, value: @nfcobjectattribute.value }
    end

    assert_redirected_to nfcobjectattribute_path(assigns(:nfcobjectattribute))
  end

  test "should show nfcobjectattribute" do
    get :show, id: @nfcobjectattribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nfcobjectattribute
    assert_response :success
  end

  test "should update nfcobjectattribute" do
    put :update, id: @nfcobjectattribute, nfcobjectattribute: { name: @nfcobjectattribute.name, nfcobject_id: @nfcobjectattribute.nfcobject_id, value: @nfcobjectattribute.value }
    assert_redirected_to nfcobjectattribute_path(assigns(:nfcobjectattribute))
  end

  test "should destroy nfcobjectattribute" do
    assert_difference('Nfcobjectattribute.count', -1) do
      delete :destroy, id: @nfcobjectattribute
    end

    assert_redirected_to nfcobjectattributes_path
  end
end
