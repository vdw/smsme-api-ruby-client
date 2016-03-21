**This project is under development.**

# SMSme

A Ruby API library for the SMSme platform.

## Getting started

Add this line to your application's Gemfile:

```ruby
gem 'smsme'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install smsme

## Usage

Create the object:

```ruby
sms = SMSme::Api.new('YOUR_USERNAME', 'YOUR_PASSWORD')
```

### Get balance

```ruby
sms.balance.data
```

### Get pricing table

```ruby
sms.pricing.data
```

### Send a single SMS

```ruby
sms.send.data('originator', 'recipient', 'message', 'delivery_date')
```

### Send bulk SMS

```ruby
sms.send_bulk.data('originator', 'recipient1, recipient2', 'message', 'delivery_date')
```

### Get reports

```ruby
sms.reports.data('start_date', 'end_date', 'originator', 'recipient')
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/vdw/smsme-api-ruby-client.

## License

Released under the MIT License.

Copyright 2015 Dimitris Krestos