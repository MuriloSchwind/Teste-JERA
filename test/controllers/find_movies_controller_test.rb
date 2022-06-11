require 'test_helper'

class FindMoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get find_movies_index_url
    assert_response :success
  end

end
