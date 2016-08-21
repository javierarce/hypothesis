require 'logger'
require 'httparty'

module Hypothesis
  class API
    BASE_ENDPOINT = 'https://hypothes.is/api/'.freeze
    SEARCH_ENDPOINT = 'search'.freeze
    ANNOTATIONS_ENDPOINT = 'annotations/'.freeze

    def initialize(api_key)
      @api_key = api_key
    end

    def root
      get(BASE_ENDPOINT)
    rescue => e
      { error: e }
    end

    def search(params = {})
      get(BASE_ENDPOINT + SEARCH_ENDPOINT, params)
    rescue => e
      { error: e }
    end

    def read(id)
      get(BASE_ENDPOINT + ANNOTATIONS_ENDPOINT + id)
    rescue => e
      { error: e }
    end

    private

    def get(url, options = {})
      header = @api_key ? { 'Authorization' => 'Bearer ' + @api_key } : {}
      HTTParty.get(url, query: options, headers: header).parsed_response
    end

    def log(msg)
      puts msg if Hypothesis.log
    end
  end
end
