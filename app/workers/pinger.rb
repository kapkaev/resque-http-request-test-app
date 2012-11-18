class Pinger < Resque::Plugins::HttpRequest
  @queue = :pinger
  @type = :http_request
  @retry_limit = 10
  @retry_delay = 120

end
