require 'rails_helper'

RSpec.describe "Tricks", type: :request do
  describe "GET /tricks" do
    it "works! (now write some real specs)" do
      get tricks_path
      expect(response).to have_http_status(200)
    end
  end
end
