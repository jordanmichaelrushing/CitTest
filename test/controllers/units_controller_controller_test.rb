require 'test_helper'

class UnitsControllerControllerTest < ActionDispatch::IntegrationTest
  test "correct json is return for single proper unit" do
    get units_url, params: { units: 'minute' }
    assert_response :success
    
    body = JSON.parse(response.body)
    assert_equal body["multiplication_factor"], 60.0
    assert_equal body["unit_name"], 's'
  end

  test "correct json is return for multiple proper units" do
    get units_url, params: { units: 'degree/minute' }
    assert_response :success
    
    body = JSON.parse(response.body)
    assert_equal body["multiplication_factor"], 0.00029088820867
    assert_equal body["unit_name"], 'rad/s'

    get units_url, params: { units: "(degree/(minute*hectare))" }
    assert_response :success
    
    body = JSON.parse(response.body)
    assert_equal body["multiplication_factor"], 2.908882e-08
    assert_equal body["unit_name"], '(rad/(s*m^2))'
  end

  test "correct json is return for improper unit" do
    get units_url, params: { units: 'minute*merp' }
    assert_response :success
    
    body = JSON.parse(response.body)
    assert_equal body["message"], 'Bad Parameter'
  end

  test "correct json is return for no unit" do
    get units_url
    assert_response :success
    
    body = JSON.parse(response.body)
    assert_equal body["message"], 'Units parameter is missing'
  end
end
