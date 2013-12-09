require 'spec_helper'

describe "UserPages" do

    subject { page }
    describe "GET /user_pages" do
        describe "signup page" do
            before { visit signup_path }

            it { should have_content("Sign up") }
        end
    end

    describe "profile page" do
        let(:user) { FactoryGirl.create :user }
        before { visit user_path(user) }

        it { should have_content(user.name) }
        it { should have_title(user.name) }
    end

    describe "signup page" do
        before { visit signup_path }

        it { should have_content("Sign up") }
    end
end