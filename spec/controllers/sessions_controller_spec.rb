require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  describe "POST #destroy" do
    it "delete :remember_token in cookies" do
      cookies.signed[:remember_token] = { value: 'remember_token', expires: 2.weeks.from_now }

      post :destroy

      expect(cookies.signed[:remember_token]).to be_nil
      expect(response).to redirect_to(root_path)
    end
  end
end
