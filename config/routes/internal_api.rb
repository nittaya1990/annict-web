# frozen_string_literal: true

scope module: :api do
  scope module: :internal do
    constraints format: "json" do
      # rubocop:disable Layout/ExtraSpacing, Layout/LineLength
      match "/api/internal/episode_records",                   via: :post,   as: :internal_api_episode_record_list,     to: "episode_records#create"
      match "/api/internal/multiple_episode_records",          via: :post,   as: :internal_api_multiple_episode_record, to: "multiple_episode_records#create"
      match "/api/internal/received_channels",                 via: :get,    as: :internal_api_received_channel_list,   to: "received_channels#index"
      # rubocop:enable Layout/ExtraSpacing, Layout/LineLength
    end
  end
end
