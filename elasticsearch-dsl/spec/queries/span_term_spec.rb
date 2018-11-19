require 'spec_helper'

describe Elasticsearch::DSL::Search::Queries::SpanTerm do

  describe '#to_hash' do

    let(:search) do
      described_class.new
    end

    it 'can be converted to a hash' do
      expect(search.to_hash).to eq(span_term: {})
    end
  end

  describe '#initialize' do

    context 'when a hash is provided' do

      let(:search) do
        described_class.new(foo: 'bar')
      end

      it 'sets the value' do
        expect(search.to_hash[:span_term][:foo]).to eq('bar')
      end
    end
  end
end
