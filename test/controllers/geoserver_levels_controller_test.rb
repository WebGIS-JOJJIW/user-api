require "test_helper"

class GeoserverLevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geoserver_level = geoserver_levels(:one)
  end

  test "should get index" do
    get geoserver_levels_url, as: :json
    assert_response :success
  end

  test "should create geoserver_level" do
    assert_difference("GeoserverLevel.count") do
      post geoserver_levels_url, params: { geoserver_level: { geoserver_level: @geoserver_level.geoserver_level, geoserver_password: @geoserver_level.geoserver_password, geoserver_username: @geoserver_level.geoserver_username } }, as: :json
    end

    assert_response :created
  end

  test "should show geoserver_level" do
    get geoserver_level_url(@geoserver_level), as: :json
    assert_response :success
  end

  test "should update geoserver_level" do
    patch geoserver_level_url(@geoserver_level), params: { geoserver_level: { geoserver_level: @geoserver_level.geoserver_level, geoserver_password: @geoserver_level.geoserver_password, geoserver_username: @geoserver_level.geoserver_username } }, as: :json
    assert_response :success
  end

  test "should destroy geoserver_level" do
    assert_difference("GeoserverLevel.count", -1) do
      delete geoserver_level_url(@geoserver_level), as: :json
    end

    assert_response :no_content
  end
end
