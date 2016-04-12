# Behat show_cmd

steps to reproduce

- run `docker-compose up -d` . This builds the docker containers exposed on port 80
- enter php container and run composer install
    - run `docker exec -it php bash`
    - `apt-get install git`
    - ` cd /project; composer install` and let it run
- run behat and see the show_cmd error

```
Feature: Laravel 5 page
  As a behat tester
  In order use behat mink correctly
  I want to see the homepage to make sure visit does not throw a show_cmd exception

  Scenario: Laravel startup page displaying correctly # features/example.feature:6
    Given I am on the homepage                        # FeatureContext::iAmOnHomepage()
    Then show last response                           # FeatureContext::showLastResponse()
      Set "show_cmd" parameter in behat.yml to be able to open page in browser (ex.: "show_cmd: firefox %s") (RuntimeException)
    Then I should see "Laravel 5"                     # FeatureContext::assertPageContainsText()

--- Failed scenarios:

    features/example.feature:6

1 scenario (1 failed)
3 steps (1 passed, 1 failed, 1 skipped)
0m0.70s (21.75Mb)
root@e5b1e6ed570c:/project#
```