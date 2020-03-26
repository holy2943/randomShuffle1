require "application_system_test_case"

class RandomShaffulesTest < ApplicationSystemTestCase
  setup do
    @random_shaffule = random_shaffules(:one)
  end

  test "visiting the index" do
    visit random_shaffules_url
    assert_selector "h1", text: "Random Shaffules"
  end

  test "creating a Random shaffule" do
    visit random_shaffules_url
    click_on "New Random Shaffule"

    fill_in "Answer", with: @random_shaffule.answer
    fill_in "Question", with: @random_shaffule.question
    click_on "Create Random shaffule"

    assert_text "Random shaffule was successfully created"
    click_on "Back"
  end

  test "updating a Random shaffule" do
    visit random_shaffules_url
    click_on "Edit", match: :first

    fill_in "Answer", with: @random_shaffule.answer
    fill_in "Question", with: @random_shaffule.question
    click_on "Update Random shaffule"

    assert_text "Random shaffule was successfully updated"
    click_on "Back"
  end

  test "destroying a Random shaffule" do
    visit random_shaffules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Random shaffule was successfully destroyed"
  end
end
