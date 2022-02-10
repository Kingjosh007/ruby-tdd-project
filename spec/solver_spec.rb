require_relative '../solver'

describe Solver do

  context 'When testing the Book class' do

    describe "#factorial" do
      it "returns 1 when 0 is passed" do

        expect(Solver).to receive(:factorial).with(0).and_return(1)
      end

      it "returns 2 when 2 is passed" do
        expect(Solver).to receive(:factorial).with(2).and_return(2)
      end

      it "returns 120 when 5 is passed" do
        expect(Solver).to receive(:factorial).with(5).and_return(120)
      end

      it "raises an exception when a negative number is passed" do
        expect { Solver.factorial(-1) }.to raise_error(ArgumentError)
        expect { Solver.factorial(-10) }.to raise_error(ArgumentError)
      end
    end

    describe "#reverse" do
        it "returns the reverse of the string passed" do
            expect(Solver).to receive(:reverse).with("abc").and_return("cba")
            expect(Solver).to receive(:reverse).with("okay").and_return("yako")
        end

        it "returns the same string when a palindrom is passed" do
            expect(Solver).to receive(:reverse).with("kayaksaladalaskayak").and_return("kayaksaladalaskayak")
            expect(Solver).to receive(:reverse).with("radar").and_return("radar")
        end
    end

  end
end
