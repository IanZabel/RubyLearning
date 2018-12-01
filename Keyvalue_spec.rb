require './Keyvalue.rb'

describe 'Key-Value Response Test' do

	it "sends 'put a b' and recieves ok as output" do
		
		input = StringIO.new("put a b\r\n")
		output = Keyvalue.new.mainloop(input)
		output.should eq "ok"

		input = StringIO.new("exit\r\n")
		output = Keyvalue.new.mainloop(input)
		output.should eq 'exit'

	end
end
