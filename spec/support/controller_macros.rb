module ControllerMacros
  def login_user
    before(:each) do
      require 'pry'
      binding.pry
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryGirl.create(:user)
      user.confirm!
      sign_in user
    end
  end
end