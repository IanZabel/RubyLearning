describe 'Key-Value Response Test' do
	it "sends 'put a b' and recieves ok as output" do
		input = StringIO.new("put a b")
		output = Keyvalue.new.start(input)
		output.should eq "ok"
	end
end
