require 'rails_helper'

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

RSpec.describe GuestListsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # GuestList. As you add validations to GuestList, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GuestListsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all guest_lists as @guest_lists" do
      guest_list = GuestList.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:guest_lists)).to eq([guest_list])
    end
  end

  describe "GET show" do
    it "assigns the requested guest_list as @guest_list" do
      guest_list = GuestList.create! valid_attributes
      get :show, {:id => guest_list.to_param}, valid_session
      expect(assigns(:guest_list)).to eq(guest_list)
    end
  end

  describe "GET new" do
    it "assigns a new guest_list as @guest_list" do
      get :new, {}, valid_session
      expect(assigns(:guest_list)).to be_a_new(GuestList)
    end
  end

  describe "GET edit" do
    it "assigns the requested guest_list as @guest_list" do
      guest_list = GuestList.create! valid_attributes
      get :edit, {:id => guest_list.to_param}, valid_session
      expect(assigns(:guest_list)).to eq(guest_list)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new GuestList" do
        expect {
          post :create, {:guest_list => valid_attributes}, valid_session
        }.to change(GuestList, :count).by(1)
      end

      it "assigns a newly created guest_list as @guest_list" do
        post :create, {:guest_list => valid_attributes}, valid_session
        expect(assigns(:guest_list)).to be_a(GuestList)
        expect(assigns(:guest_list)).to be_persisted
      end

      it "redirects to the created guest_list" do
        post :create, {:guest_list => valid_attributes}, valid_session
        expect(response).to redirect_to(GuestList.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved guest_list as @guest_list" do
        post :create, {:guest_list => invalid_attributes}, valid_session
        expect(assigns(:guest_list)).to be_a_new(GuestList)
      end

      it "re-renders the 'new' template" do
        post :create, {:guest_list => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested guest_list" do
        guest_list = GuestList.create! valid_attributes
        put :update, {:id => guest_list.to_param, :guest_list => new_attributes}, valid_session
        guest_list.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested guest_list as @guest_list" do
        guest_list = GuestList.create! valid_attributes
        put :update, {:id => guest_list.to_param, :guest_list => valid_attributes}, valid_session
        expect(assigns(:guest_list)).to eq(guest_list)
      end

      it "redirects to the guest_list" do
        guest_list = GuestList.create! valid_attributes
        put :update, {:id => guest_list.to_param, :guest_list => valid_attributes}, valid_session
        expect(response).to redirect_to(guest_list)
      end
    end

    describe "with invalid params" do
      it "assigns the guest_list as @guest_list" do
        guest_list = GuestList.create! valid_attributes
        put :update, {:id => guest_list.to_param, :guest_list => invalid_attributes}, valid_session
        expect(assigns(:guest_list)).to eq(guest_list)
      end

      it "re-renders the 'edit' template" do
        guest_list = GuestList.create! valid_attributes
        put :update, {:id => guest_list.to_param, :guest_list => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested guest_list" do
      guest_list = GuestList.create! valid_attributes
      expect {
        delete :destroy, {:id => guest_list.to_param}, valid_session
      }.to change(GuestList, :count).by(-1)
    end

    it "redirects to the guest_lists list" do
      guest_list = GuestList.create! valid_attributes
      delete :destroy, {:id => guest_list.to_param}, valid_session
      expect(response).to redirect_to(guest_lists_url)
    end
  end

end
