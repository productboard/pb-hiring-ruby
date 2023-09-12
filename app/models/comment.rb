# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :feature
  validates :title, presence: true
end
