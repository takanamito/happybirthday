require 'spec_helper'

RSpec.describe Happybirthday::Birthday do
  describe '#today?' do
    subject { Happybirthday.born_on(birthday).today? }

    context 'when birthday is today' do
      let(:birthday) { Date.today }

      it { is_expected.to be true }
    end

    context 'when birthday is not today' do
      let(:birthday) { Date.today.next_day }

      it { is_expected.to be false }
    end
  end

  describe '#age' do
    subject { Happybirthday.born_on(birthday).age }
    let(:birthday) { Date.today }

    it { is_expected.to be_a(Happybirthday::Age) }
  end
end
