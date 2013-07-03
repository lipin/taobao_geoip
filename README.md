# TaobaoGeoip

淘宝IP地址库

可根据ip查询国家 、省（自治区或直辖市）、市（县）、运营商等

调用频率需小于10qps

## Installation

Add this line to your application's Gemfile:

    gem 'taobao_geoip'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install taobao_geoip

## Usage

```ruby
a_data = TaobaoGeoip.new("127.0.0.1")
a_data.city
a_data.country
a_data.isp
a_data.area
a_data.county
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
