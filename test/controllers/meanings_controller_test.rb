require 'test_helper'

class MeaningsControllerTest < ActionController::TestCase
  setup do
    @meaning = meanings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meanings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meaning" do
    assert_difference('Meaning.count') do
      post :create, meaning: { definition: @meaning.definition, meaning_number: @meaning.meaning_number, part_of_speech: @meaning.part_of_speech }
    end

    assert_redirected_to meaning_path(assigns(:meaning))
  end

  test "should show meaning" do
    get :show, id: @meaning
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meaning
    assert_response :success
  end

  test "should update meaning" do
    patch :update, id: @meaning, meaning: { definition: @meaning.definition, meaning_number: @meaning.meaning_number, part_of_speech: @meaning.part_of_speech }
    assert_redirected_to meaning_path(assigns(:meaning))
  end

  test "should destroy meaning" do
    assert_difference('Meaning.count', -1) do
      delete :destroy, id: @meaning
    end

    assert_redirected_to meanings_path
  end
end
