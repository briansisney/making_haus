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

RSpec.describe MealDishesController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # MealDish. As you add validations to MealDish, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MealDishesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all meal_dishes as @meal_dishes" do
      meal_dish = MealDish.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:meal_dishes)).to eq([meal_dish])
    end
  end

  describe "GET show" do
    it "assigns the requested meal_dish as @meal_dish" do
      meal_dish = MealDish.create! valid_attributes
      get :show, {:id => meal_dish.to_param}, valid_session
      expect(assigns(:meal_dish)).to eq(meal_dish)
    end
  end

  describe "GET new" do
    it "assigns a new meal_dish as @meal_dish" do
      get :new, {}, valid_session
      expect(assigns(:meal_dish)).to be_a_new(MealDish)
    end
  end

  describe "GET edit" do
    it "assigns the requested meal_dish as @meal_dish" do
      meal_dish = MealDish.create! valid_attributes
      get :edit, {:id => meal_dish.to_param}, valid_session
      expect(assigns(:meal_dish)).to eq(meal_dish)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new MealDish" do
        expect {
          post :create, {:meal_dish => valid_attributes}, valid_session
        }.to change(MealDish, :count).by(1)
      end

      it "assigns a newly created meal_dish as @meal_dish" do
        post :create, {:meal_dish => valid_attributes}, valid_session
        expect(assigns(:meal_dish)).to be_a(MealDish)
        expect(assigns(:meal_dish)).to be_persisted
      end

      it "redirects to the created meal_dish" do
        post :create, {:meal_dish => valid_attributes}, valid_session
        expect(response).to redirect_to(MealDish.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved meal_dish as @meal_dish" do
        post :create, {:meal_dish => invalid_attributes}, valid_session
        expect(assigns(:meal_dish)).to be_a_new(MealDish)
      end

      it "re-renders the 'new' template" do
        post :create, {:meal_dish => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested meal_dish" do
        meal_dish = MealDish.create! valid_attributes
        put :update, {:id => meal_dish.to_param, :meal_dish => new_attributes}, valid_session
        meal_dish.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested meal_dish as @meal_dish" do
        meal_dish = MealDish.create! valid_attributes
        put :update, {:id => meal_dish.to_param, :meal_dish => valid_attributes}, valid_session
        expect(assigns(:meal_dish)).to eq(meal_dish)
      end

      it "redirects to the meal_dish" do
        meal_dish = MealDish.create! valid_attributes
        put :update, {:id => meal_dish.to_param, :meal_dish => valid_attributes}, valid_session
        expect(response).to redirect_to(meal_dish)
      end
    end

    describe "with invalid params" do
      it "assigns the meal_dish as @meal_dish" do
        meal_dish = MealDish.create! valid_attributes
        put :update, {:id => meal_dish.to_param, :meal_dish => invalid_attributes}, valid_session
        expect(assigns(:meal_dish)).to eq(meal_dish)
      end

      it "re-renders the 'edit' template" do
        meal_dish = MealDish.create! valid_attributes
        put :update, {:id => meal_dish.to_param, :meal_dish => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested meal_dish" do
      meal_dish = MealDish.create! valid_attributes
      expect {
        delete :destroy, {:id => meal_dish.to_param}, valid_session
      }.to change(MealDish, :count).by(-1)
    end

    it "redirects to the meal_dishes list" do
      meal_dish = MealDish.create! valid_attributes
      delete :destroy, {:id => meal_dish.to_param}, valid_session
      expect(response).to redirect_to(meal_dishes_url)
    end
  end

end
