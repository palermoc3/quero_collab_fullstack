require "application_system_test_case"

class MostRankedPostsTest < ApplicationSystemTestCase
  setup do
    @most_ranked_post = most_ranked_posts(:one)
  end

  test "visiting the index" do
    visit most_ranked_posts_url
    assert_selector "h1", text: "Most Ranked Posts"
  end

  test "creating a Most ranked post" do
    visit most_ranked_posts_url
    click_on "New Most Ranked Post"

    fill_in "Posts", with: @most_ranked_post.posts_id
    fill_in "User", with: @most_ranked_post.user_id
    click_on "Create Most ranked post"

    assert_text "Most ranked post was successfully created"
    click_on "Back"
  end

  test "updating a Most ranked post" do
    visit most_ranked_posts_url
    click_on "Edit", match: :first

    fill_in "Posts", with: @most_ranked_post.posts_id
    fill_in "User", with: @most_ranked_post.user_id
    click_on "Update Most ranked post"

    assert_text "Most ranked post was successfully updated"
    click_on "Back"
  end

  test "destroying a Most ranked post" do
    visit most_ranked_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Most ranked post was successfully destroyed"
  end
end
