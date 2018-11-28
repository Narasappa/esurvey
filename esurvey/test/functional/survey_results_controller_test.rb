require 'test_helper'

class SurveyResultsControllerTest < ActionController::TestCase
  setup do
    @survey_result = survey_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survey_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey_result" do
    assert_difference('SurveyResult.count') do
      post :create, survey_result: { interview: @survey_result.interview }
    end

    assert_redirected_to survey_result_path(assigns(:survey_result))
  end

  test "should show survey_result" do
    get :show, id: @survey_result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey_result
    assert_response :success
  end

  test "should update survey_result" do
    put :update, id: @survey_result, survey_result: { interview: @survey_result.interview }
    assert_redirected_to survey_result_path(assigns(:survey_result))
  end

  test "should destroy survey_result" do
    assert_difference('SurveyResult.count', -1) do
      delete :destroy, id: @survey_result
    end

    assert_redirected_to survey_results_path
  end
end
