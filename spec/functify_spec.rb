require_relative "../functify.rb"
require "rspec"
# FUNCTIFY v0.0.1
# Given a hash, adds a function for each key in the hash which returns the value
# for that key at the time it was functified. E.g. {:a => 1}.functify.a == 1
describe Hash do
  describe "#functify" do
    describe "creates a function for each key in the hash," do
      [2,3,5].each do |n|
        context "so {:a => #{n}}.functify.a" do
          it "returns #{n}" do
            expect({:a => n}.functify.a).to eq(n)
            expect{{:a => n}.functify.b}.to raise_error(NoMethodError)
          end
        end
      end
    end
    it "modifies self" do
      h = {:a => 1}
      h.functify
      expect(h.a).to eq(1)
    end
    it "does not modify every Hash object" do
      {:a => 1}.functify
      expect{{:a => 1}.a}.to raise_error(NoMethodError)
    end
    it "is still a hash" do
      expect({:a => 1}.functify[:a]).to eq(1)
    end
    it "is frozen for functions, but not hash values" do
      h = {:a => 1}
      h.functify
      h[:a] = 2
      expect(h.a).to eq(1)
      expect(h[:a]).to eq(2)
    end
  end
end