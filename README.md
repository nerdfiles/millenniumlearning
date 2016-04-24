# [Millenium Learning](https://millenniumlearning.herokuapp.com)

A learning management system facilitates the following:

1. Pays students to answer stale questions which affect Grade Performance  
   Indicators (only pays if return on investment is greater than growth,  
   such that subscriptions MUST cover the cost to reward students);
2. Students can tip other students to answer questions;
3. Students can post questions when subscribed with a microsubscription

## TODO Features

1. Micropayments and Microsubscriptions with Stripe (port `mini_charge` plugin).

## “Nice to have” Features

1. Video Content Embedding for “Video Response Answers”
2. TeX and Markdown formatting for answering and posting questions
3. Social Network Engagement and Sharing
4. Personal Digital Workspaces for Students
5. Real-time P2P Digital Writeboard

## Setup

1. Install [Node.js](http://blog.teamtreehouse.com/install-node-js-npm-windows) (which will come with `npm`).
2. Install [Grunt](http://www.codebelt.com/javascript/install-grunt-js-on-windows/).
3. Install [Bower](https://ruleoftech.com/2015/setting-up-bower-and-gulp-in-windows).

Run `grunt setup`.

## Local dev

Run `grunt devel`.

## Build & development

Run `grunt` for building and `grunt serve` for preview.

## Testing

Running `grunt test` will run the unit tests with karma.
