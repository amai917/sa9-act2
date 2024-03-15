require_relative 'prob3'

RSpec.describe StringWrapper do
  describe "#reverse" do
    it "reverses the string" do
      string_wrapper = StringWrapper.new('hello')
      expect(string_wrapper.reverse).to eq('olleh')
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      string_wrapper = StringWrapper.new('hello')
      expect(string_wrapper.upcase).to eq('HELLO')
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      string_wrapper = StringWrapper.new('HELLO')
      expect(string_wrapper.downcase).to eq('hello')
    end
  end
end
