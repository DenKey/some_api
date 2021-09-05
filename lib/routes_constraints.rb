class ApiVersionConstraint
  attr_reader "version"

  def initialize(options)
    @version = options.fetch(:version)
  end

  def matches?(request)
    api = request.headers[:api]
    true if api.present? and api.include?(version)
  end
end
