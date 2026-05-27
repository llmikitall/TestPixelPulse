require "test_helper"

class NavigationTest < ActionDispatch::IntegrationTest
  test "навигация по шапке сайта" do
    get root_path
    assert_response :success
    
    get news_path
    assert_response :success
    assert_select "h2", /ПОСЛЕДНИЕ НОВОСТИ ИГРОВОЙ ИНДУСТРИИ/i
  end
end
