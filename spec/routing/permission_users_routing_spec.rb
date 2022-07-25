require "rails_helper"

RSpec.describe PermissionUsersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/permission_users").to route_to("permission_users#index")
    end

    it "routes to #show" do
      expect(get: "/permission_users/1").to route_to("permission_users#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/permission_users").to route_to("permission_users#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/permission_users/1").to route_to("permission_users#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/permission_users/1").to route_to("permission_users#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/permission_users/1").to route_to("permission_users#destroy", id: "1")
    end
  end
end
