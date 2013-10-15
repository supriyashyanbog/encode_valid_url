require 'uri'
require "base64"
class EncodeValidUrl
  def self.encode(inputurl, encode = true)
  	begin
  		uri = URI.parse(inputurl)
  		uri.kind_of?(URI::HTTP)
  		inputurl = Base64.encode64(inputurl) if encode
      return true, inputurl
	  rescue URI::InvalidURIError		
  		return false, "Invalid url, Please verify your url"
  	end
  end

  def self.convert(inputurl, encode = true)
  	encode(inputurl, encode)
  end	
end