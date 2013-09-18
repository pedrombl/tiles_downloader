require "./sequence_utils.rb"
include SequenceUtils

describe 'Sequence Utils module' do
   it "returns an array with numbers between 0 and 1" do
     sequence_between(0,1).should eql([0,1])
   end

   it "returns an array with numbers between 1 and 2" do
     sequence_between(1,2).should eql([1,2])
   end

   it "returns an array with numbers between 0 and 2" do
     sequence_between(0,2).should eql([0,1,2])
   end

   it "returns an array with numbers between 2 and 0" do
     sequence_between(2,0).should eql([0,1,2])
   end
end
