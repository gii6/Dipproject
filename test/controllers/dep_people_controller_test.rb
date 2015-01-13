require 'test_helper'

class DepPeopleControllerTest < ActionController::TestCase
  setup do
    @dep_person = dep_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dep_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dep_person" do
    assert_difference('DepPerson.count') do
      post :create, dep_person: { contract_id: @dep_person.contract_id, department_id: @dep_person.department_id, person_id: @dep_person.person_id }
    end

    assert_redirected_to dep_person_path(assigns(:dep_person))
  end

  test "should show dep_person" do
    get :show, id: @dep_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dep_person
    assert_response :success
  end

  test "should update dep_person" do
    patch :update, id: @dep_person, dep_person: { contract_id: @dep_person.contract_id, department_id: @dep_person.department_id, person_id: @dep_person.person_id }
    assert_redirected_to dep_person_path(assigns(:dep_person))
  end

  test "should destroy dep_person" do
    assert_difference('DepPerson.count', -1) do
      delete :destroy, id: @dep_person
    end

    assert_redirected_to dep_people_path
  end
end
