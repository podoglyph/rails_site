require 'rails_helper'

RSpec.describe "Admin Article Management" do

  let(:user) {create(:user, role: "admin")}

  before(:each) do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
  end

  context "when creating a new article" do

    it "it fills-in new article form fields" do
      visit new_admin_article_path

      fill_in "article[title]", with: "Hello, my name is..."
      fill_in "article[body]", with: "Whoosh, really great read there..."

      click_on "Create"
      expect(Article.count).to eq(1)
      article = Article.first

      expect(current_path).to eq(admin_articles_path)
      expect(page).to have_content(article.title)
      expect(page).to have_content(article.body)
      expect(page).to have_content(article.created_at)
      expect(page).to have_content(article.user.first_name)
    end

  end

  # context "An admin updates an article" do
  #
  # end
end
