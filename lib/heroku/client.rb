class Heroku::Client

  def process_with_lock(method, uri, extra_headers={}, payload=nil)
    error "app is locked."
  end

  alias_method :process_with_out_lock, :process
  alias_method :process, :process_with_lock

end
