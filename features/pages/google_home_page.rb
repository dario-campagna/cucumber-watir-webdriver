class GoogleHomePage

  def initialize(browser)
    @browser = browser
  end

  def visit
    @browser.goto "google.com"
  end

  def search_for term
    @browser.text_field(:name => "q").set term
    @browser.button.click
    google_result_page = GoogleResultPage.new(@browser)
    google_result_page.wait_until_present
    google_result_page
  end

end