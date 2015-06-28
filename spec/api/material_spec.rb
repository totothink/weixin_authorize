# encoding: utf-8
describe WeixinAuthorize::Api::Material do

  it "get material should success"

  it "get material count should success" do
    response = $client.material_count
    expect(response.code).to eq(WeixinAuthorize::OK_CODE)
  end

  it "get materials should success" do
    response = $client.materials
    expect(response.code).to eq(WeixinAuthorize::OK_CODE)    
  end
end