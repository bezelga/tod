require 'spec_helper'

describe Tod do
  before do
    Tod.configure do |config|
      config.repo = Tod::Repositories::TasksInMemory.new
    end
  end

  describe '.add_task' do
    let(:repo) { Tod.repo }

    it 'adds a new task' do
      expect { Tod.add_task('remember the milk') }.to change{ repo.count }.by(1)
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
