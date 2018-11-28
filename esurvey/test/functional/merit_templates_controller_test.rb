require 'test_helper'

class MeritTemplatesControllerTest < ActionController::TestCase
  setup do
    @merit_template = merit_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:merit_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create merit_template" do
    assert_difference('MeritTemplate.count') do
      post :create, merit_template: { template_name: @merit_template.template_name }
    end

    assert_redirected_to merit_template_path(assigns(:merit_template))
  end

  test "should show merit_template" do
    get :show, id: @merit_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @merit_template
    assert_response :success
  end

  test "should update merit_template" do
    put :update, id: @merit_template, merit_template: { template_name: @merit_template.template_name }
    assert_redirected_to merit_template_path(assigns(:merit_template))
  end

  test "should destroy merit_template" do
    assert_difference('MeritTemplate.count', -1) do
      delete :destroy, id: @merit_template
    end

    assert_redirected_to merit_templates_path
  end
end
