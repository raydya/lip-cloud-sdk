RSpec.describe Ltp::Cloud::Sdk do
  before(:all) do
    Ltp::Cloud::Sdk.configure do |config|
      config.api_key = 'Y1T755H1A5tRTNRV3zcLwCtzljAoPmJtWffI0Afp'
    end
  end

  it "has a version number" do
    expect(Ltp::Cloud::Sdk::VERSION).not_to be nil
  end

  it "自然语言分词 南京市长江大桥" do
    res = Ltp::Cloud::Sdk.client.analysis('南京市长江大桥能不能长一点')
    expect(res).to eq ["南京市", "长江", "大桥", "能", "不", "能", "长", "一点"]
  end
end
