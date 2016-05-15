# [Millenium Learning](https://millenniumlearning.herokuapp.com)

A learning management system facilitates the following:

1. Pays students to answer stale questions which affect Grade Performance  
   Indicators (only pays if return on investment is greater than growth,  
   such that subscriptions MUST cover the cost to reward students);
2. Students can tip other students to answer questions;
3. Students can post questions when subscribed with a microsubscription

## KPI

1. Retention
2. Engagement
3. When/Where questions (hyperlexic machines) problem (training set)
3.1. Apply Winograd caching

## TODO Features

1. Micropayments and Microsubscriptions with Stripe (port `mini_charge` plugin).
2. Students will be able to sign up to answer questions, but they will have to  
   pay to see other students answers. Everyone can see the questions, but students  
   have to pay to see the answers.

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
