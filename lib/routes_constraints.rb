# frozen_string_literal: true

class ApiVersionConstraint
  attr_reader 'version'

  def initialize(options)
    @version = options.fetch(:version)
  end

  def matches?(request)
    api = request.headers[:api]
    true if api.present? && api.include?(version)
  end
end
