@login
Feature: Login feature
  CBT-25: As a user, I should be able to login with correct credentials
  to different accounts.And dashboard should be displayed.
#this is how we comment in feature file
  #1.Create a new feature file named Login.feature
  # 2.Create 3 new scenariosfrom the below provided user story.
  # 3.User Story: As a user, I should be able to login with correct credentials to different accounts.
  # And dashboard should be displayed.Accounts are: librarian, student, admin
  # 4.Create a new step definition class under step_definitionspackage named: LoginStepDefs
  # 5.Run the code. Get the step definitions from the console
  # 6.No Java-selenium code implementation needed.
  # Just add printing line in the implementation regarding what should be happening when the code is ran.
  # Ex: “User is on the login page”

  @librarian @employee @sunday
  Scenario: Librarian login scenario
    Given User is on te login page
    When User logs in as librarian
    Then User should see dashboard

  @student
  Scenario: Student login scenario
    Given User is on te login page
    When User logs in as student
    Then User should see dashboard

  @admin @employee @sunday
  Scenario: Admin login scenario
    Given User is on te login page
    When User logs in as admin
    Then User should see dashboard