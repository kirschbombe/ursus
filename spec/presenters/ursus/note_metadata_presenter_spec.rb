# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Ursus::NoteMetadataPresenter do
  let(:id) { '123' }
  let(:pres) { described_class.new(document: doc) }
  let(:config) { YAML.safe_load(File.open(Rails.root.join('config', 'metadata/note_metadata.yml'))) }

  context 'with a solr document containing overview metadata' do
    describe '#note_terms' do
      it 'returns the Description Key' do
        expect(config['description_tesim'].to_s).to eq('Description')
      end

      it 'returns the Caption Key' do
        expect(config['caption_tesim'].to_s).to eq('Caption')
      end

      it 'returns the Summary Key' do
        expect(config['summary_tesim'].to_s).to eq('Summary')
      end

      it 'returns the Table of Contents Key' do
        expect(config['toc_tesim'].to_s).to eq('Table of Contents')
      end

      it 'returns the Provenance Key' do
        expect(config['provenance_tesim'].to_s).to eq('Provenance')
      end
    end
  end
end
