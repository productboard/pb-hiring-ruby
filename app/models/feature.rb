# frozen_string_literal: true

class Feature < ApplicationRecord
  has_many :comments, dependent: :destroy
end
