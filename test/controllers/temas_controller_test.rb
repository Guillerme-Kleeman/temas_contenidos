require 'test_helper'

class TemasControllerTest < ActionDispatch::IntegrationTest
  test "should get Listado" do
    get temas_Listado_url
    assert_response :success
  end

  test "should get nuevo" do
    get temas_nuevo_url
    assert_response :success
  end

end
