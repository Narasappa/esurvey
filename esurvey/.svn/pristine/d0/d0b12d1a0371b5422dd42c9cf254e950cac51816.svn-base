require 'test_helper'

class AddShortWordToPoliticalPartiesControllerTest < ActionController::TestCase
  setup do
    @add_short_word_to_political_party = add_short_word_to_political_parties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_short_word_to_political_parties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_short_word_to_political_party" do
    assert_difference('AddShortWordToPoliticalParty.count') do
      post :create, add_short_word_to_political_party: { short_word: @add_short_word_to_political_party.short_word }
    end

    assert_redirected_to add_short_word_to_political_party_path(assigns(:add_short_word_to_political_party))
  end

  test "should show add_short_word_to_political_party" do
    get :show, id: @add_short_word_to_political_party
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_short_word_to_political_party
    assert_response :success
  end

  test "should update add_short_word_to_political_party" do
    put :update, id: @add_short_word_to_political_party, add_short_word_to_political_party: { short_word: @add_short_word_to_political_party.short_word }
    assert_redirected_to add_short_word_to_political_party_path(assigns(:add_short_word_to_political_party))
  end

  test "should destroy add_short_word_to_political_party" do
    assert_difference('AddShortWordToPoliticalParty.count', -1) do
      delete :destroy, id: @add_short_word_to_political_party
    end

    assert_redirected_to add_short_word_to_political_parties_path
  end
end
