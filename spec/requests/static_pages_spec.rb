require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have the h1 'New App' " do
     visit '/static_pages/home'
     page.should have_selector('h1', :text => 'New App')
    end

    it "should have the title 'Home'"
      visit '/static_pages/home'
      page.should have_selector ('title', :text => "Ruby on Rails Tutorial New App | Home")
    end
  end
  

  describe "Help page" do

  	it "should have the title ' Help' " do
  		visit '/static_pages/Help'
  		page.should have_selector('title', :text => "Ruby on Rails Tutorial New App | Help")
  	end
  end

  describe "About page" do

    it "should have the h1 'About Us' " do
      visit '/static_pages/about'
      page.should have_selector ('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial New App | About Us")
  end

end
