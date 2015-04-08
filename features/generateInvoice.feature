Feature: generate invoices
  In order to generate an invoice
  As an admin
  I want to be able to generate invoices

  Scenario: Generating an invoice
    Given I am on any page
    When I click on the generate invoice link
    Then I should land on the generate invoice page
