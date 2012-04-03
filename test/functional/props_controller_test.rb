require './test/test_helper'

class PropsControllerTest < ActionController::TestCase
  context "props controller" do
    setup do
      sign_in FactoryGirl.create(:user)
      @prop = FactoryGirl.create(:prop)
    end
    
    context "on GET to :index" do
      setup { get :index }

      should respond_with :success
    end
  end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:props)
  # end
  # 
  # test "should show prop" do
  #   get :show, id: @prop
  #   assert_response :success
  # end
  # 
  # test "should get edit" do
  #   get :edit, id: @prop
  #   assert_response :success
  # end
  # 
  # test "should update prop" do
  #   put :update, id: @prop, prop: @prop.attributes
  #   assert_redirected_to prop_path(assigns(:prop))
  # end
end
