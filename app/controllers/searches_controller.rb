class SearchesController < ApplicationController
  def search
  end

  def foursquare
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = TGVSJMX3TKFUMLJSFI0USQXUHKIYV2YM525EPA22TKJIOKNK
      req.params['client_secret'] = cVUU2EOGUOMUJ1XJGGGYOD1SZELZJZL2CFHLRCQCVK5GWSZZ0
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
