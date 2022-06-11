require 'test_helper'

class MyMoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_movies_index_url
    assert_response :success
  end

end
