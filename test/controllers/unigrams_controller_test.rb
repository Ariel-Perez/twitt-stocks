require 'test_helper'

class UnigramsControllerTest < ActionController::TestCase
  setup do
    @unigram = unigrams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unigrams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unigram" do
    assert_difference('Unigram.count') do
      post :create, unigram: {  }
    end

    assert_redirected_to unigram_path(assigns(:unigram))
  end

  test "should show unigram" do
    get :show, id: @unigram
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unigram
    assert_response :success
  end

  test "should update unigram" do
    patch :update, id: @unigram, unigram: {  }
    assert_redirected_to unigram_path(assigns(:unigram))
  end

  test "should destroy unigram" do
    assert_difference('Unigram.count', -1) do
      delete :destroy, id: @unigram
    end

    assert_redirected_to unigrams_path
  end
end
