require 'my_methods'

describe Enumerable do
	subject {[3,4,5,6,7,1,8]}
	describe "#my_count" do
		it "equals 7" do
			expect(subject.my_count).to eql(7)
		end
	end
	describe "#my_any" do
		it "returns true" do
			expect(subject.my_any { |x| x % 2 == 0}).to eql(true)
		end
	end
end
