class Heroku::Client

  def process(method, uri, extra_headers={}, payload=nil)
    raise "no command for you!"
    headers  = heroku_headers.merge(extra_headers)
    args     = [method, payload, headers].compact
    response = resource(uri).send(*args)

    extract_warning(response)
    response
  end

end
