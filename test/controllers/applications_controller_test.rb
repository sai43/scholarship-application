require 'test_helper'

class ApplicationsControllerTest < ActionController::TestCase
  setup do
    @application = applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create application" do
    assert_difference('Application.count') do
      post :create, application: { address: @application.address, boolean: @application.boolean, city: @application.city, date: @application.date, date_of_birth: @application.date_of_birth, email: @application.email, essay: @application.essay, gender: @application.gender, name: @application.name, phone_number: @application.phone_number, string: @application.string, string: @application.string, string: @application.string, string: @application.string, string: @application.string, text: @application.text, text: @application.text, zip_code: @application.zip_code }
    end

    assert_redirected_to application_path(assigns(:application))
  end

  test "should show application" do
    get :show, id: @application
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @application
    assert_response :success
  end

  test "should update application" do
    patch :update, id: @application, application: { address: @application.address, boolean: @application.boolean, city: @application.city, date: @application.date, date_of_birth: @application.date_of_birth, email: @application.email, essay: @application.essay, gender: @application.gender, name: @application.name, phone_number: @application.phone_number, string: @application.string, string: @application.string, string: @application.string, string: @application.string, string: @application.string, text: @application.text, text: @application.text, zip_code: @application.zip_code }
    assert_redirected_to application_path(assigns(:application))
  end

  test "should destroy application" do
    assert_difference('Application.count', -1) do
      delete :destroy, id: @application
    end

    assert_redirected_to applications_path
  end
end
