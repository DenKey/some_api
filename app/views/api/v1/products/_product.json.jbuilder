# frozen_string_literal: true

json.extract! product, :id, :name, :description,
              :brand_id, :beginning_date, :expiration_date, :available, :category_ids,
              :created_at, :updated_at
