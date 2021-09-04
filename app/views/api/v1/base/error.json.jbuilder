json.extract! @error, :status, :message

if @error.errors.present?
  json.errors @error.errors
end
