# frozen_string_literal: true
#
json.partial! 'user', user: @user
json.token token if token
