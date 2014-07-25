require 'spec_helper'

describe Tod do
  describe '.add_task' do
    let(:repo) { Tod.repo }

    it 'adds a new task' do
      expect { Tod.add_task('speak @ Guru-SP') }.to change{ repo.count }.by(1)
    end

    context 'when title is blank' do
      subject(:add_blank_task) { Tod.add_task('') }

      it 'does not persist' do
        expect { add_blank_task }.to_not change{ repo.count }
      end

      it { eq(false) }
    end
  end
end
