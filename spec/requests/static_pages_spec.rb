require 'spec_helper'

describe "StaticPages" do

  let(:base_title) {'California Vapor Reserve'}

  describe "Home page" do

  	it "has the content 'California Vapor Reserve'" do
  		visit root_path
  		expect(page).to have_content('Home')
    end

    it "has the base title" do
      visit root_path
      expect(page).to have_title("California Vapor Reserve")
    end

    it "does not have the custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do

    it "has the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "has the right title" do
      visit help_path
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do

    it "has the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end

    it "has the right title" do
      visit about_path
      expect(page).to have_title("#{base_title} | About Us")
    end
  end

  describe "Contact page" do

    it "has the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "has the right title" do
      visit contact_path
      expect(page).to have_title("#{base_title} | Contact Us")
    end
  end
end
