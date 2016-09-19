require 'spec_helper'

describe "Static pages" do

  include Rails.application.routes.url_helpers

    subject { page }

  describe "Home page" do

    before { visit root_path }

    it { should have_content('Home') }
    it { should have_title("Home") }
  end

  describe "Help page" do

    before {visit help_path}

    it {should have_content('Help')}
    it {should have_title("Help")}
  end

  describe "About page" do

    before {visit about_path}

    it {should have_content('About Us')}
    it {should have_title("About Us")}
  end

  describe "Contact page" do

    before {visit contacts_path}
    
    it {should have_content('Contacts')}
    it {should have_title("Contacts")}
  end

end