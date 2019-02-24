class Browser
  def self.screenshot(scenario)
    file_name = "#{scenario.name.downcase!}_#{suffix_result(scenario)}.png"
    Capybara.current_session.save_screenshot(file_name)
  end

  def self.suffix_result(scenario)
    scenario.passed? ? result = "passed" : result = "failed"
    return result
  end
end
