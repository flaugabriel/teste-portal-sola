require 'test_helper'

class FreightsControllerTest < ActionDispatch::IntegrationTest
  test "should get find_cep_and_calculate" do
    get freights_find_cep_and_calculate_url
    assert_response :success
  end

end
