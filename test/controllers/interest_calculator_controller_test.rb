require "test_helper"

class InterestCalculatorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get interest_calculator_index_url
    assert_response :success
  end
end
