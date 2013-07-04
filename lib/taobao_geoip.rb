require "taobao_geoip/version"
require "open-uri"
require 'json'

class TaobaoGeoIP
  BaseURL = 'http://ip.taobao.com/service/getIpInfo.php?ip='
  attr_reader :ip

  def initialize ip
    @ip   = ip
    @datas = JSON(open("#{BaseURL}#{@ip}").gets)
  end

  def status?
    @datas["code"] == 0 ? true : false
  end

  def country
    warn "invaild ip." and return unless status?
    @datas["data"]["country"]
  end

  def country_id
    warn "invaild ip." and return unless status?
    @datas["data"]["country_id"]
  end

  def area
    warn "invaild ip." and return unless status?
    @datas["data"]["area"]
  end

  def area_id
    warn "invaild ip." and return unless status?
    @datas["data"]["area_id"]
  end

  def region
    warn "invaild ip." and return unless status?
    @datas["data"]["region"]
  end

  def region_id
    warn "invaild ip." and return unless status?
    @datas["data"]["region_id"]
  end

  def city
    warn "invaild ip." and return unless status?
    @datas["data"]["city"]
  end

  def city_id
    warn "invaild ip." and return unless status?
    @datas["data"]["city_id"]
  end

  def county
    warn "invaild ip." and return unless status?
    @datas["data"]["county"]
  end

  def county_id
    warn "invaild ip." and return unless status?
    @datas["data"]["county_id"]
  end

  def isp
    warn "invaild ip." and return unless status?
    @datas["data"]["isp"]
  end

  def isp_id
    warn "invaild ip." and return unless status?
    @datas["data"]["isp_id"]
  end

end
