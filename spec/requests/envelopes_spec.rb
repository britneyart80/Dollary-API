require 'rails_helper'

RSpec.describe "Envelopes", type: :request do
  describe "GET /envelopes" do
    it "works! (now write some real specs)" do
      get envelopes_path
      expect(response).to have_http_status(200)
    end
  end
end
