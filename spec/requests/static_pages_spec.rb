require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

  	it "has the content 'California Vapor Reserve'" do
  		visit '/static_pages/home'
  		expect(page).to have_content('California Vapor Reserve')
    end

    it "has the right title" do
      visit '/static_pages/home'
      expect(page).to have_title('California Vapor Reserve | Home')
    end
  end

  describe "Help page" do

    it "has the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "has the right title" do
      visit '/static_pages/help'
      expect(page).to have_title('California Vapor Reserve | Help')
    end
  end

  describe "About page" do

    it "has the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "has the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("California Vapor Reserve | About Us")
    end
  end
end
