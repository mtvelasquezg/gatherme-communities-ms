require 'test_helper'

class ComunitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comunity = comunities(:one)
  end

  test "should get index" do
    get comunities_url, as: :json
    assert_response :success
  end

  test "should create comunity" do
    assert_difference('Comunity.count') do
      post comunities_url, params: { comunity: { administrators: @comunity.administrators, banner: @comunity.banner, description: @comunity.description, name: @comunity.name, tag: @comunity.tag, users: @comunity.users } }, as: :json
    end

    assert_response 201
  end

  test "should show comunity" do
    get comunity_url(@comunity), as: :json
    assert_response :success
  end

  test "should update comunity" do
    patch comunity_url(@comunity), params: { comunity: { administrators: @comunity.administrators, banner: @comunity.banner, description: @comunity.description, name: @comunity.name, tag: @comunity.tag, users: @comunity.users } }, as: :json
    assert_response 200
  end

  test "should destroy comunity" do
    assert_difference('Comunity.count', -1) do
      delete comunity_url(@comunity), as: :json
    end

    assert_response 204
  end
end
