require "spec_helper"
require "log_sheet"

describe LogSheet do 
	it "Has value and log_type entry" do
		LogSheet.new(:value => 1.1, :log_type => "aaa")
		LogSheet.value.should be_true
	end
end