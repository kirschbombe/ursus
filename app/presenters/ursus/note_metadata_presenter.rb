# frozen_string_literal: true
module Ursus
  class NoteMetadataPresenter
    attr_reader :document, :config

    def initialize(document:)
      @document = document
      @config = YAML.safe_load(File.open(Rails.root.join('config', 'metadata/note_metadata.yml')))
    end

    def note_terms
      @document.slice(*@config.keys)
    end
  end
end
