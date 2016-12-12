require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @site_title = "Adonis Gardens"
  end

  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get pages_home_url
    assert_response :success
    assert_select "title", "#{@site_title}"
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
    assert_select "title", "About | #{@site_title}"
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@site_title}"
  end

  test "should get features" do
    get pages_features_url
    assert_response :success
    assert_select "title", "Features | #{@site_title}"
  end
end
