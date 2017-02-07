describe Fastlane::Actions::GitInfoExtractAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The git_info_extract plugin is working!")

      Fastlane::Actions::GitInfoExtractAction.run(nil)
    end
  end
end
