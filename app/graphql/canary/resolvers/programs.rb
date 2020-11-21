# frozen_string_literal: true

module Canary
  module Resolvers
    class Programs < Canary::Resolvers::Base
      def resolve(only_viewer_checked_channels: nil, order_by: nil)
        order = Canary::OrderProperty.build(order_by)

        programs = object.programs.only_kept

        if only_viewer_checked_channels
          programs = programs.joins(:channel).merge(context[:viewer].channels.only_kept)
        end

        programs.order(order.field => order.direction)
      end
    end
  end
end
