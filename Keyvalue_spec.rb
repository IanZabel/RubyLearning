require './Keyvalue.rb'

describe 'Key-Value Response Test' do

	it "sends 'put a b' and recieves ok as output" do

		input = StringIO.new("put a b\r\nexit\r\n")
		expectedoutput = "ok\r\nBye!\r\n"
		actualoutput = StringIO.new
		Keyvalue.new.mainloop(input, actualoutput)
		expect(actualoutput.read).to eq expectedoutput

	end
end
