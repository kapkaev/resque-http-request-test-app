class TestsController < ApplicationController
  # GET /tests
  # GET /tests.json
  def index
  end

  def ping
    render "index"
  end

  def create
    @params = params[ping_tests_path]
    (@params[:count].to_i || 100).times do
      Resque.enqueue(Pinger, @params["url"], @params["method"], @params["params"])
    end
    render "index"
  end

end
