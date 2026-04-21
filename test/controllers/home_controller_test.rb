require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "renders the fantastical hello world page" do
    get root_url

    assert_response :success
    assert_select "h1", "HELLO WORLD!"
    assert_match(/GLORIOUS COMPUTATION/i, @response.body)
  end
end
