require "spec_helper"

describe Array::Where do
  let(:john) do OpenStruct.new(name: "John", age: 21) end
  let(:eve) do OpenStruct.new(name: "Eve", age: 24) end
  let(:james) do OpenStruct.new(name: "James", age: 21) end
  let(:array) do [john, eve, james] end

  describe "#where" do
    let(:where) do array.where(query) end

    context "with one condition" do
      let(:query) do { age: 21 } end

      it "returns any items that match" do
        expect(where).to contain_exactly(john, james)
      end
    end

    context "with multiple condition" do
      let(:query) do { name: "Eve", age: 24 } end

      it "returns any items that match"do
        expect(where).to contain_exactly(eve)
      end
    end
  end

  describe "#wherein" do
    let(:wherein) do array.wherein(query) end

    context "with one condition" do
      let(:query) do { age: ->(age) { age > 22 } } end

      it "returns any items that match" do
        expect(wherein).to contain_exactly(eve)
      end
    end

    context "with multiple condition" do
      let(:query) do { age: ->(age) { age < 22 }, name: ->(name) { name.include?("J") } } end

      it "returns any items that match" do
        expect(wherein).to contain_exactly(john, james)
      end
    end
  end
end
