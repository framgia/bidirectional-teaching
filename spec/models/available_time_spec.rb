require "rails_helper"

describe AvailableTime do
  subject(:available_time){AvailableTime.new}
  let(:now){Time.now}
  describe "#start_at_unix=" do
    before {available_time.start_at_unix = now.to_i}
    it{expect(available_time.start_at.utc.to_s).to eq now.utc.to_s}
  end
  describe "#end_at_unix=" do
    before {available_time.end_at_unix = now.to_i}
    it{expect(available_time.end_at.utc.to_s).to eq now.utc.to_s}
  end
end
