# frozen_string_literal: true

json.extract! @error, :status, :message

json.errors @error.errors if @error.errors.present?
