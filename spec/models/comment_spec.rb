# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Comment, type: :model do
  it 'handles validation of title' do
    expect(described_class.new).to be_invalid
  end
end
