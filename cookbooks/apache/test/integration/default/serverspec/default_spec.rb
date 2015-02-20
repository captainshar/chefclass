require 'serverspec'
set :backend, :exec

describe "apache" do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  
  it "is awesome" do
    expect(true).to eq true
  end

  it "is installed" do
    expect(package("httpd")).to be_installed
  end

  it "is running" do
    expect(service("httpd")).to be_running
  end

# test for port 80 being open
  it "has port 80 open" do
    expect(port(80)).to be_listening
  end

# TODO: Test content of web page

end
