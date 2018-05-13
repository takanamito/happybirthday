require 'spec_helper'

RSpec.describe Happybirthday do
  it 'has a version number' do
    expect(Happybirthday::VERSION).not_to be nil
  end

  describe '.born_on' do
    subject { Happybirthday.born_on(birthday) }

    context 'when parameter is Date object' do
      let(:birthday) { Date.today }

      it { is_expected.to be_a(Happybirthday::Birthday) }
    end

    context 'when parameter is String date' do
      let(:birthday) { '2018-05-08' }

      it { is_expected.to be_a(Happybirthday::Birthday) }
    end
  end
end
