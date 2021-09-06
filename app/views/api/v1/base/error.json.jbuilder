# frozen_string_literal: true

json.extract! @error,:message

json.errors @error.errors if @error.errors.present?
