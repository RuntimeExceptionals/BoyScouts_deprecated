Given /^I am on (.+) page$/ do |name|
  visit path_to("/")
end

When /^I click on the (.+) link$/ do |link|
  if link == "generate invoices"
    visit path_to("") #path to generate invoice goes inside quotes
  end
end

Then /^I should land on the (.+) page$/ do |page|
  if page == "generate invoices"
    current_page.should_be == (visit path_to("")) #path to generate invoice also goes inside quotes
  end
end