require 'spec_helper'

describe "Authentication" do

  include Rails.application.routes.url_helpers

  subject { page }

  describe "signin page" do
    before { visit signin_path }

    it { should have_content('Sign in') }
    it { should have_title('Sign in') }
  end
end