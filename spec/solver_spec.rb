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

    describe "#fizzbuzz" do
        it "returns 'fizz' when passed a multiple of 3" do
            expect(Solver).to receive(:fizzbuzz).with(3).and_return("fizz")
            expect(Solver).to receive(:fizzbuzz).with(6).and_return("fizz")
            expect(Solver).to receive(:fizzbuzz).with(99).and_return("fizz")
        end

        it "returns 'buzz' when passed a multiple of 5" do
            expect(Solver).to receive(:fizzbuzz).with(5).and_return("buzz")
            expect(Solver).to receive(:fizzbuzz).with(10).and_return("buzz")
            expect(Solver).to receive(:fizzbuzz).with(95).and_return("buzz")
        end

        it "returns 'fizzbuzz' when passed a multiple of 3 and 5" do
            expect(Solver).to receive(:fizzbuzz).with(15).and_return("fizzbuzz")
            expect(Solver).to receive(:fizzbuzz).with(30).and_return("fizzbuzz")
            expect(Solver).to receive(:fizzbuzz).with(105).and_return("fizzbuzz")
        end
        it "returns the number when passed a number that is not a multiple of 3 or 5" do
            expect(Solver).to receive(:fizzbuzz).with(1).and_return(1.to_s)
            expect(Solver).to receive(:fizzbuzz).with(2).and_return(2.to_s)
            expect(Solver).to receive(:fizzbuzz).with(4).and_return(4.to_s)
            expect(Solver).to receive(:fizzbuzz).with(7).and_return(7.to_s)
            expect(Solver).to receive(:fizzbuzz).with(8).and_return(8.to_s)
            expect(Solver).to receive(:fizzbuzz).with(11).and_return(64.to_s)
            expect(Solver).to receive(:fizzbuzz).with(13).and_return(67.to_s)
            expect(Solver).to receive(:fizzbuzz).with(16).and_return(83.to_s)
        end
    end
  end
end
