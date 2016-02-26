# lita-slack-tandup

lita-slack-standup is a gem for Lita (https://www.lita.io/), a chat bot written in ruby.  
It handles standup meetings on slack (the sentences are in french for now).

## Installation

Add lita-standup to your Lita instance's Gemfile:

``` ruby
gem "lita-standup"
```

## Configuration

In your lita configuration file (lita_config.rb), add the lines :
``` ruby
Lita.congifure do |config|
  config.handlers.slack_standup.channel = <My standup channel name here>
end
```

## Usage

 - !standup start : launches the standup, prints the standups already filled and asks for someone else to report
 - !standup next : skips the current user and asks the next user to do his standup report
 - !standup report <some standup report> : saves your standup. If you do it before the start of the standup, you won't be asked to report. The bot will displays your standup in your stead
 - !standup ignore <some user> : ignores an user for the standups
 - !standup unignore <some user> : unignores an user
 - !standup list : list all ignored users
  
The standup stops when everyone has done his report or has been skipped.
