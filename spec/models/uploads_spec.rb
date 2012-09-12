require 'spec_helper'

describe Upload do
  describe "validations" do

    before do
      @upload = Upload.new(name: 'Upload', file: 'root/to/the/file')
    end

    it "should not be a valid upload without a name" do
      @upload.name = " "
      @upload.should_not be_valid
    end

    it "should not be a valid upload without a file" do
      @upload.file = ""
      @upload.should_not be_valid
    end
  end
end