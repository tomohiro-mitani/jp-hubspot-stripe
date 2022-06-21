# Stripe and Hubspot Integration

This simple demo was  built to show quote to cash automation by using Stripe and Hubspot. Products in Stripe are integrated with that of Hubspot by using Integorate. A scenario in Integorate listens to the Stripe events. Whenever a product is created in Stripe, Integorate will create the equivalent product in Hubspot.

This article is published on [Medium](https://medium.com/@tomozilla/automating-qtc-with-stripe-billing-and-hubspot-7f37edd37f5a).

## Overview

This demo has the following features, Stripe products, and Hubspot integrations:

### Requirements

* You'll need a Stripe account. [Sign up for free](https://dashboard.stripe.com/register) before running the application.
* Ruby 2.6.3
* HubSpot Account for your Sales Hub
* Sign up [Make](https://www.make.com/en?_ga=2.77219927.334397487.1655780516-208306684.1655780516) and crate a scenario (You can use blueprint.json if you want.)

### Setup

```
$ git clone https://git.corp.stripe.com/stripe-internal/solutions-demos
$ cd simple-monthly-billing
$ bundle
```

Copy the .env.template file. You'll need to fill out the Publishable and Secret key details from your [Stripe account](https://dashboard.stripe.com/account/apikeys)

```
$ cp .env.template .env
```

Set up secret key for HubSpot and Stripe in env file

Run the app!
```
$ bundle exec ruby app.rb
```

### Getting Started

1. Sync products between Stripe and HubSpot through using Integromat. You can import blueprint.json in Make for your template.

2. Create a subscription product in Stripe and let Integromat sync the product in HubSpot.

3. Create a HubSpot deal with products as line items.

4. Clone the repo and install dependencies:

5. Go to [http://localhost:4567/?deal=DEAL_ID](http://localhost:4567/?deal=DEAL_ID) in your browser to start using the demo.


