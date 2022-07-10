require 'rails_helper'
require 'file_reader'

describe FileReader, "#parse_file" do
    before(:all) do
        @path = File.expand_path(Rails.root.to_s + "/app/data/webserver.log")
    end

    it 'returns a string output' do
        file = FileReader.new(@path + 'webserver.log')
        expect(file.parse_file.class).to eq(String)
    end

    it 'returns a no file exists' do
        file = FileReader.new(@path + 'webserver1.log')
        expect(file.parse_file).to eq('File not found')
    end
end