# frozen_string_literal: true

class CalculateComments
  attr_reader :feature

  def initialize(feature)
    @feature = feature
  end

  def count
    feature.comments.count
  end

  def all_titles
    feature.comments.map(&:title)
  end
end
