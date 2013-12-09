require 'spec_helper'

describe "Static pages" do

  before { visit root_path }

  subject { page }

  describe "Home page" do
    it { should have_content("Sample App") }
  end

  describe "Help page" do
    it { should have_content("Help") }
  end

  describe "About page" do
    it { should_not have_title("Home") }
  end
end
