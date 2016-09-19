require 'spec_helper'

describe "User page" do

  include Rails.application.routes.url_helpers

    subject { page }

  describe "signup page" do

    before { visit signup_path }

    it { should have_content('Sign up') }
    it { should have_title("Sign up") }
  end
end