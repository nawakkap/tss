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

describe CoilsController do

  # This should return the minimal set of attributes required to create a valid
  # Coil. As you add validations to Coil, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "coil_id" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CoilsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all coils as @coils" do
      coil = Coil.create! valid_attributes
      get :index, {}, valid_session
      assigns(:coils).should eq([coil])
    end
  end

  describe "GET show" do
    it "assigns the requested coil as @coil" do
      coil = Coil.create! valid_attributes
      get :show, {:id => coil.to_param}, valid_session
      assigns(:coil).should eq(coil)
    end
  end

  describe "GET new" do
    it "assigns a new coil as @coil" do
      get :new, {}, valid_session
      assigns(:coil).should be_a_new(Coil)
    end
  end

  describe "GET edit" do
    it "assigns the requested coil as @coil" do
      coil = Coil.create! valid_attributes
      get :edit, {:id => coil.to_param}, valid_session
      assigns(:coil).should eq(coil)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Coil" do
        expect {
          post :create, {:coil => valid_attributes}, valid_session
        }.to change(Coil, :count).by(1)
      end

      it "assigns a newly created coil as @coil" do
        post :create, {:coil => valid_attributes}, valid_session
        assigns(:coil).should be_a(Coil)
        assigns(:coil).should be_persisted
      end

      it "redirects to the created coil" do
        post :create, {:coil => valid_attributes}, valid_session
        response.should redirect_to(Coil.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved coil as @coil" do
        # Trigger the behavior that occurs when invalid params are submitted
        Coil.any_instance.stub(:save).and_return(false)
        post :create, {:coil => { "coil_id" => "invalid value" }}, valid_session
        assigns(:coil).should be_a_new(Coil)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Coil.any_instance.stub(:save).and_return(false)
        post :create, {:coil => { "coil_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested coil" do
        coil = Coil.create! valid_attributes
        # Assuming there are no other coils in the database, this
        # specifies that the Coil created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Coil.any_instance.should_receive(:update_attributes).with({ "coil_id" => "MyString" })
        put :update, {:id => coil.to_param, :coil => { "coil_id" => "MyString" }}, valid_session
      end

      it "assigns the requested coil as @coil" do
        coil = Coil.create! valid_attributes
        put :update, {:id => coil.to_param, :coil => valid_attributes}, valid_session
        assigns(:coil).should eq(coil)
      end

      it "redirects to the coil" do
        coil = Coil.create! valid_attributes
        put :update, {:id => coil.to_param, :coil => valid_attributes}, valid_session
        response.should redirect_to(coil)
      end
    end

    describe "with invalid params" do
      it "assigns the coil as @coil" do
        coil = Coil.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Coil.any_instance.stub(:save).and_return(false)
        put :update, {:id => coil.to_param, :coil => { "coil_id" => "invalid value" }}, valid_session
        assigns(:coil).should eq(coil)
      end

      it "re-renders the 'edit' template" do
        coil = Coil.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Coil.any_instance.stub(:save).and_return(false)
        put :update, {:id => coil.to_param, :coil => { "coil_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested coil" do
      coil = Coil.create! valid_attributes
      expect {
        delete :destroy, {:id => coil.to_param}, valid_session
      }.to change(Coil, :count).by(-1)
    end

    it "redirects to the coils list" do
      coil = Coil.create! valid_attributes
      delete :destroy, {:id => coil.to_param}, valid_session
      response.should redirect_to(coils_url)
    end
  end

end