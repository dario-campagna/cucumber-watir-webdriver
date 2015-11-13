class GoogleResultPage

  def initialize(browser)
    @browser = browser
  end

  def wait_until_present
    @browser.div(:id => "resultStats").wait_until_present
  end

  def results_for(term)
    @browser.div(:id => "resultStats").exists? && @browser.div(:id => "search").text.include?("#{term}")
  end

end