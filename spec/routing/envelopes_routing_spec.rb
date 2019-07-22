require "rails_helper"

RSpec.describe EnvelopesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/envelopes").to route_to("envelopes#index")
    end


    it "routes to #show" do
      expect(:get => "/envelopes/1").to route_to("envelopes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/envelopes").to route_to("envelopes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/envelopes/1").to route_to("envelopes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/envelopes/1").to route_to("envelopes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/envelopes/1").to route_to("envelopes#destroy", :id => "1")
    end

  end
end
