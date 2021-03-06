require 'spec_helper'

describe Redis::Bitops::Bitmap, redis_cleanup: true, redis_key_prefix: "rsb:" do
  it_should_behave_like "a bitmap", :bitmap
end

describe "Redis#bitmap" do
  it_should_behave_like "a bitmap factory method", :bitmap, Redis::Bitops::Bitmap
end
