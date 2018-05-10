require 'spec_helper'

RSpec.describe HappyBirthday::Birthday do
  describe '#today?' do
    subject { HappyBirthday.born_on(birthday).today? }

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
    subject { HappyBirthday.born_on(birthday).age }
    let(:birthday) { Date.today }

    it { is_expected.to be_a(HappyBirthday::Age) }
  end
end
