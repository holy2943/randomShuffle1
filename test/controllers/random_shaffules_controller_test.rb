require 'test_helper'

class RandomShaffulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @random_shaffule = random_shaffules(:one)
  end

  test "should get index" do
    get random_shaffules_url
    assert_response :success
  end

  test "should get new" do
    get new_random_shaffule_url
    assert_response :success
  end

  test "should create random_shaffule" do
    assert_difference('RandomShaffule.count') do
      post random_shaffules_url, params: { random_shaffule: { answer: @random_shaffule.answer, question: @random_shaffule.question } }
    end

    assert_redirected_to random_shaffule_url(RandomShaffule.last)
  end

  test "should show random_shaffule" do
    get random_shaffule_url(@random_shaffule)
    assert_response :success
  end

  test "should get edit" do
    get edit_random_shaffule_url(@random_shaffule)
    assert_response :success
  end

  test "should update random_shaffule" do
    patch random_shaffule_url(@random_shaffule), params: { random_shaffule: { answer: @random_shaffule.answer, question: @random_shaffule.question } }
    assert_redirected_to random_shaffule_url(@random_shaffule)
  end

  test "should destroy random_shaffule" do
    assert_difference('RandomShaffule.count', -1) do
      delete random_shaffule_url(@random_shaffule)
    end

    assert_redirected_to random_shaffules_url
  end
end
