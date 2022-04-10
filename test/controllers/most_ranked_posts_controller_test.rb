require "test_helper"

class MostRankedPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @most_ranked_post = most_ranked_posts(:one)
  end

  test "should get index" do
    get most_ranked_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_most_ranked_post_url
    assert_response :success
  end

  test "should create most_ranked_post" do
    assert_difference('MostRankedPost.count') do
      post most_ranked_posts_url, params: { most_ranked_post: { posts_id: @most_ranked_post.posts_id, user_id: @most_ranked_post.user_id } }
    end

    assert_redirected_to most_ranked_post_url(MostRankedPost.last)
  end

  test "should show most_ranked_post" do
    get most_ranked_post_url(@most_ranked_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_most_ranked_post_url(@most_ranked_post)
    assert_response :success
  end

  test "should update most_ranked_post" do
    patch most_ranked_post_url(@most_ranked_post), params: { most_ranked_post: { posts_id: @most_ranked_post.posts_id, user_id: @most_ranked_post.user_id } }
    assert_redirected_to most_ranked_post_url(@most_ranked_post)
  end

  test "should destroy most_ranked_post" do
    assert_difference('MostRankedPost.count', -1) do
      delete most_ranked_post_url(@most_ranked_post)
    end

    assert_redirected_to most_ranked_posts_url
  end
end
