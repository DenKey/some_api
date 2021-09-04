class ApiVersionConstraint
  attr_reader "version"

  def initialize(options)
    @version = options.fetch(:version)
  end

  def matches?(request)
    request.headers.fetch(:api).include?(version)
  end
end
