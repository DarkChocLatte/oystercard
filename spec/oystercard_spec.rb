
require 'oystercard'

describe Oystercard do

  let(:station) {double(:station)}
  let(:station2) {double(:station)}

  describe "Topped up" do

    before do
      subject.top_up(20)
    end

      context "Does the class respond to these methods" do

          it 'checks card for balance' do
            expect(subject).to respond_to(:balance)
          end

          it 'allows user to add money' do
            expect(subject).to respond_to(:top_up).with(1).argument
          end
      end

      context "Does the balance feature work as intended" do

<<<<<<< HEAD
      it 'allows top_up to increase the balance' do
        amount = 100
        expect(subject.top_up(amount)).to eq(subject.balance)
      end
=======
          it 'raises an error if balance exceeds 90' do
            subject.top_up(70)
            expect{subject.top_up(1)}.to raise_error("Card exceeds 90!")
          end
>>>>>>> f5bc9298e09d6d1c74c490375ec830c06ae0d6f6

      end

<<<<<<< HEAD
      # it 'deducts spent money' do
      #   balance = 20
      #   expect{subject.deduct(1)}.to change{subject.balance}
      # end
  end
=======
      # it 'tracks a users journey' do
      #   expect(:in_journey?).to be_truthy
      # end

      context "when the user touches in" do

          it 'expect true' do
            expect(subject.touch_in(station)).to eq true
          end
          it 'tracks entry station' do
            subject.touch_in(station)
            expect(subject.entry_station).to eq station
          end

      end
>>>>>>> f5bc9298e09d6d1c74c490375ec830c06ae0d6f6

      context "when the user touches out" do

           it 'knows if a user has touched out' do
             expect(subject.touch_out(station)).to eq false
           end

          it 'tracks exit station' do
            subject.touch_out(station)
            expect(subject.exit_station).to eq station
          end

          it 'tracks their full journey' do
            subject.touch_in(station)
            subject.touch_out(station2)
            expect(subject.journey).to eq({:start => station, :end => station2})
          end


      end
 end

describe "Not topped up" do

        context "When the class intializes with" do
            it 'has initial balance of 0' do
              expect(subject.balance).to eq 0
            end

            it 'starts with an empty list of journeys' do
            expect(subject.journey).to eq({})
            end

        end
      end
<<<<<<< HEAD

      it 'deducts fare from balance' do
        subject.top_up(5)
        subject.touch_in
        expect{subject.touch_out}.to change{subject.balance}.by -1
      end
  end
=======
>>>>>>> f5bc9298e09d6d1c74c490375ec830c06ae0d6f6

    context "Does the balance feature work as intended" do

        it 'deducts spent money' do
          expect{subject.deduct(1)}.to change{subject.balance}
      end
     end

     context "it raises an error when" do

         it 'has a balance less than 1' do
         expect{subject.touch_in(station)}.to raise_error("Insufficient funds please top up")
         end
     end



end
