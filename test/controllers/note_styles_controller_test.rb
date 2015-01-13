require 'test_helper'

class NoteStylesControllerTest < ActionController::TestCase
  setup do
    @note_style = note_styles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:note_styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create note_style" do
    assert_difference('NoteStyle.count') do
      post :create, note_style: { code: @note_style.code, name: @note_style.name, style: @note_style.style }
    end

    assert_redirected_to note_style_path(assigns(:note_style))
  end

  test "should show note_style" do
    get :show, id: @note_style
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @note_style
    assert_response :success
  end

  test "should update note_style" do
    patch :update, id: @note_style, note_style: { code: @note_style.code, name: @note_style.name, style: @note_style.style }
    assert_redirected_to note_style_path(assigns(:note_style))
  end

  test "should destroy note_style" do
    assert_difference('NoteStyle.count', -1) do
      delete :destroy, id: @note_style
    end

    assert_redirected_to note_styles_path
  end
end
