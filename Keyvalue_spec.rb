describe 'Key-Value Response Test' do
	it "sends 'put a b' and recieves ok as output" do
		require './Keyvalue.rb'
		output = Keyvalue.new.start("put a b")
		output.should eq "ok"
	end
end
