Feature: Display shouts

Scenario: In-range shout is displayed
  Given Sean is in range
  When he shouts
  Then his shout should be displayed
  
Scenario: Shouts displayed in time order
  Given Sean is in range
  When he shouts "Hello"
  And he shouts "Are there facemasks in the store?"
  Then "Are there facemasks in the store?" should be at the top of the list of shouts heard
