require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe UserGameLevelsController do

  # This should return the minimal set of attributes required to create a valid
  # UserGameLevel. As you add validations to UserGameLevel, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { attributes_for(:user_game_level) }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UserGameLevelsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all user_game_levels as @user_game_levels" do
      user_game_level = UserGameLevel.create! valid_attributes
      get :index, {}, valid_session
      assigns(:user_game_levels).should eq([user_game_level])
    end
  end

  describe "GET show" do
    it "assigns the requested user_game_level as @user_game_level" do
      user_game_level = UserGameLevel.create! valid_attributes
      get :show, {:id => user_game_level.to_param}, valid_session
      assigns(:user_game_level).should eq(user_game_level)
    end
  end

  describe "GET new" do
    it "assigns a new user_game_level as @user_game_level" do
      get :new, {}, valid_session
      assigns(:user_game_level).should be_a_new(UserGameLevel)
    end
  end

  describe "GET edit" do
    it "assigns the requested user_game_level as @user_game_level" do
      user_game_level = UserGameLevel.create! valid_attributes
      get :edit, {:id => user_game_level.to_param}, valid_session
      assigns(:user_game_level).should eq(user_game_level)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new UserGameLevel" do
        expect {
          post :create, {:user_game_level => valid_attributes}, valid_session
        }.to change(UserGameLevel, :count).by(1)
      end

      it "assigns a newly created user_game_level as @user_game_level" do
        post :create, {:user_game_level => valid_attributes}, valid_session
        assigns(:user_game_level).should be_a(UserGameLevel)
        assigns(:user_game_level).should be_persisted
      end

      it "redirects to the created user_game_level" do
        post :create, {:user_game_level => valid_attributes}, valid_session
        response.should redirect_to(UserGameLevel.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved user_game_level as @user_game_level" do
        # Trigger the behavior that occurs when invalid params are submitted
        UserGameLevel.any_instance.stub(:save).and_return(false)
        post :create, {:user_game_level => { "user_game" => "invalid value" }}, valid_session
        assigns(:user_game_level).should be_a_new(UserGameLevel)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        UserGameLevel.any_instance.stub(:save).and_return(false)
        post :create, {:user_game_level => { "user_game" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested user_game_level" do
        user_game_level = UserGameLevel.create! valid_attributes
        # Assuming there are no other user_game_levels in the database, this
        # specifies that the UserGameLevel created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        UserGameLevel.any_instance.should_receive(:update).with({"user_game_id"=>"1", "game_level_id"=>"1"})
        put :update, {:id => user_game_level.to_param, :user_game_level => attributes_for(:user_game_level)}, valid_session
      end

      it "assigns the requested user_game_level as @user_game_level" do
        user_game_level = UserGameLevel.create! valid_attributes
        put :update, {:id => user_game_level.to_param, :user_game_level => valid_attributes}, valid_session
        assigns(:user_game_level).should eq(user_game_level)
      end

      it "redirects to the user_game_level" do
        user_game_level = UserGameLevel.create! valid_attributes
        put :update, {:id => user_game_level.to_param, :user_game_level => valid_attributes}, valid_session
        response.should redirect_to(user_game_level)
      end
    end

    describe "with invalid params" do
      it "assigns the user_game_level as @user_game_level" do
        user_game_level = UserGameLevel.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UserGameLevel.any_instance.stub(:save).and_return(false)
        put :update, {:id => user_game_level.to_param, :user_game_level => { "user_game" => "invalid value" }}, valid_session
        assigns(:user_game_level).should eq(user_game_level)
      end

      it "re-renders the 'edit' template" do
        user_game_level = UserGameLevel.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UserGameLevel.any_instance.stub(:save).and_return(false)
        put :update, {:id => user_game_level.to_param, :user_game_level => { "user_game" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested user_game_level" do
      user_game_level = UserGameLevel.create! valid_attributes
      expect {
        delete :destroy, {:id => user_game_level.to_param}, valid_session
      }.to change(UserGameLevel, :count).by(-1)
    end

    it "redirects to the user_game_levels list" do
      user_game_level = UserGameLevel.create! valid_attributes
      delete :destroy, {:id => user_game_level.to_param}, valid_session
      response.should redirect_to(user_game_levels_url)
    end
  end

end