require 'spec_helper'

RSpec.describe HappyBirthday do
  it 'has a version number' do
    expect(HappyBirthday::VERSION).not_to be nil
  end

  describe '.born_on' do
    subject { HappyBirthday.born_on(birthday) }

    context 'when parameter is Date object' do
      let(:birthday) { Date.today }

      it { is_expected.to be_a(HappyBirthday::Birthday) }
    end

    context 'when parameter is String date' do
      let(:birthday) { '2018-05-08' }

      it { is_expected.to be_a(HappyBirthday::Birthday) }
    end
  end
end
