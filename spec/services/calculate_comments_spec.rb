# frozen_string_literal: true

describe CalculateComments do
  let(:feature) { create(:feature) }

  describe '#count' do
    it 'returns the number of comments' do
      create_list(:comment, 3, feature:)
      expect(described_class.new(feature).count).to eq(3)
    end
  end

  describe '#all_titles' do
    it 'returns all the titles of the comments' do
      create(:comment, title: 'Title 1', feature:)
      create(:comment, title: 'Title 2', feature:)
      expect(described_class.new(feature).all_titles).to eq(['Title 1', 'Title 2'])
    end
  end
end
