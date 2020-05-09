# frozen_string_literal: true

namespace :one_shot do
  task hard_delete: :environment do
    [
      Cast,
      Channel,
      ChannelGroup,
      Character,
      Collection,
      CollectionItem,
      Episode,
      EpisodeRecord,
      FaqCategory,
      FaqContent,
      Organization,
      Person,
      Program,
      Record,
      Series,
      SeriesWork,
      Slot,
      Staff,
      Trailer,
      User,
      VodTitle,
      Work,
      WorkRecord,
      WorkTag
    ].each do |model|
      puts "---------- model: #{model.name}"
      model.deleted.find_each do |record|
        puts "----- model: #{model.name}, record.id: #{record.id}"
        ActiveRecord::Base.connection.disable_referential_integrity do
          record.delete
        end
      end
    end
  end

  task update_activity_resource: :environment do
    User.only_kept.find_each do |user|
      activities = user.
        activities.
        with_action(:create_status, :create_episode_record, :create_work_record).
        order(:created_at)
      activities.each do |activity|
        puts "----- User: #{user.id}, Activity: #{activity.id}"

        next if activity.trackable.activity_id

        activity.trackable.update_column(:activity_id, activity.id)
      end
    end
  end
end
