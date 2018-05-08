require 'spec_helper'

RSpec.describe HappyBirthday::Age do
  let(:age) { HappyBirthday.born_on(birthday).age }

  describe '#years_old' do
    subject { age.years_old }
    let(:birthday) { Date.today.prev_year }

    it { is_expected.to be 1 }
  end

  describe '#at' do
    subject { age.at(date) }
    let(:birthday) { Date.today.prev_year }

    context 'when parameter is Date object' do
      let(:date) { Date.today.next_year }

      it 'creates new Age object' do
        expect(subject).to be_a(HappyBirthday::Age)
        expect(subject.present_day).to eq date
      end
    end

    context 'when parameter is String date' do
      let(:date) { Date.today.next_year.to_s }

      it 'creates new Age object' do
        expect(subject).to be_a(HappyBirthday::Age)
        expect(subject.present_day).to eq Date.today.next_year
      end
    end
  end

  describe '#years_before' do
    subject { age.years_before(year) }
    let(:birthday) { Date.today.prev_year }
    let(:year) { 1 }

    it 'creates 1 year before Age object' do
      expect(subject).to be_a(HappyBirthday::Age)
      expect(subject.present_day).to eq Date.today.prev_year
    end
  end

  describe '#years_after' do
    subject { age.years_after(year) }
    let(:birthday) { Date.today.prev_year }
    let(:year) { 1 }

    it 'creates 1 year after Age object' do
      expect(subject).to be_a(HappyBirthday::Age)
      expect(subject.present_day).to eq Date.today.next_year
    end
  end
end
