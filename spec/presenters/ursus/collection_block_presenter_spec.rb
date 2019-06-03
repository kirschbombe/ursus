# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Ursus::CollectionBlockPresenter do
  let(:response) { RESPONSE }
  let(:collection_presenter) { described_class.new(response: response) }
  let(:collection_attributes) { FIRST_COLLECTION }

  before do
    solr = Blacklight.default_index.connection
    solr.add(collection_attributes)
    solr.commit
    solr.optimize
    allow(Rails.application.config).to receive(:iiif_url).and_return('https://example.com')
  end

  it 'can determine if the collection facet is selected' do
    expect(collection_presenter.collection_selected?).to eq(true)
  end

  it ' can get the collection name' do
    expect(collection_presenter.collection_name).to eq('Connell (Will) Papers')
  end

  describe '#collection_document' do
    it 'can get the collection document' do
      expect(collection_presenter.collection_document[:id]).to eq('coll123')
    end
  end

  describe '#service_contact' do
    it 'can get the service contact' do
      expect(collection_presenter.service_contact).to eq('someone somewhere')
    end
  end
end
