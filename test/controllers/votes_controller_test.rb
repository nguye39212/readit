require 'test_helper'

class VotesControllerTest < ActionDispatch::IntegrationTest
  test "should get up" do
    get votes_up_url
    assert_response :success
  end

  test "should get down" do
    get votes_down_url
    assert_response :success
  end

end
