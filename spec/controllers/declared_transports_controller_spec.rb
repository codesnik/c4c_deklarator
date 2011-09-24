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

describe DeclaredTransportsController do

  # This should return the minimal set of attributes required to create a valid
  # DeclaredTransport. As you add validations to DeclaredTransport, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all declared_transports as @declared_transports" do
      declared_transport = DeclaredTransport.create! valid_attributes
      get :index
      assigns(:declared_transports).should eq([declared_transport])
    end
  end

  describe "GET show" do
    it "assigns the requested declared_transport as @declared_transport" do
      declared_transport = DeclaredTransport.create! valid_attributes
      get :show, :id => declared_transport.id.to_s
      assigns(:declared_transport).should eq(declared_transport)
    end
  end

  describe "GET new" do
    it "assigns a new declared_transport as @declared_transport" do
      get :new
      assigns(:declared_transport).should be_a_new(DeclaredTransport)
    end
  end

  describe "GET edit" do
    it "assigns the requested declared_transport as @declared_transport" do
      declared_transport = DeclaredTransport.create! valid_attributes
      get :edit, :id => declared_transport.id.to_s
      assigns(:declared_transport).should eq(declared_transport)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new DeclaredTransport" do
        expect {
          post :create, :declared_transport => valid_attributes
        }.to change(DeclaredTransport, :count).by(1)
      end

      it "assigns a newly created declared_transport as @declared_transport" do
        post :create, :declared_transport => valid_attributes
        assigns(:declared_transport).should be_a(DeclaredTransport)
        assigns(:declared_transport).should be_persisted
      end

      it "redirects to the created declared_transport" do
        post :create, :declared_transport => valid_attributes
        response.should redirect_to(DeclaredTransport.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved declared_transport as @declared_transport" do
        # Trigger the behavior that occurs when invalid params are submitted
        DeclaredTransport.any_instance.stub(:save).and_return(false)
        post :create, :declared_transport => {}
        assigns(:declared_transport).should be_a_new(DeclaredTransport)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        DeclaredTransport.any_instance.stub(:save).and_return(false)
        post :create, :declared_transport => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested declared_transport" do
        declared_transport = DeclaredTransport.create! valid_attributes
        # Assuming there are no other declared_transports in the database, this
        # specifies that the DeclaredTransport created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        DeclaredTransport.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => declared_transport.id, :declared_transport => {'these' => 'params'}
      end

      it "assigns the requested declared_transport as @declared_transport" do
        declared_transport = DeclaredTransport.create! valid_attributes
        put :update, :id => declared_transport.id, :declared_transport => valid_attributes
        assigns(:declared_transport).should eq(declared_transport)
      end

      it "redirects to the declared_transport" do
        declared_transport = DeclaredTransport.create! valid_attributes
        put :update, :id => declared_transport.id, :declared_transport => valid_attributes
        response.should redirect_to(declared_transport)
      end
    end

    describe "with invalid params" do
      it "assigns the declared_transport as @declared_transport" do
        declared_transport = DeclaredTransport.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DeclaredTransport.any_instance.stub(:save).and_return(false)
        put :update, :id => declared_transport.id.to_s, :declared_transport => {}
        assigns(:declared_transport).should eq(declared_transport)
      end

      it "re-renders the 'edit' template" do
        declared_transport = DeclaredTransport.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DeclaredTransport.any_instance.stub(:save).and_return(false)
        put :update, :id => declared_transport.id.to_s, :declared_transport => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested declared_transport" do
      declared_transport = DeclaredTransport.create! valid_attributes
      expect {
        delete :destroy, :id => declared_transport.id.to_s
      }.to change(DeclaredTransport, :count).by(-1)
    end

    it "redirects to the declared_transports list" do
      declared_transport = DeclaredTransport.create! valid_attributes
      delete :destroy, :id => declared_transport.id.to_s
      response.should redirect_to(declared_transports_url)
    end
  end

end
