# frozen_string_literal: true

module Api::Internal
  class RecordsController < ApplicationV6Controller
    include Pundit

    before_action :authenticate_user!

    def update
      user = User.only_kept.find_by!(username: params[:username])
      @record = current_user.records.only_kept.find_by!(id: params[:record_id], user_id: user.id)

      authorize @record, :update?

      if @record.episode_record?
        @form = Forms::EpisodeRecordForm.new(episode_record_form_params)
        @form.record = @record
        @form.episode = @record.episode_record.episode

        if @form.invalid?
          return render json: @form.errors.full_messages, status: :unprocessable_entity
        end

        Updaters::EpisodeRecordUpdater.new(user: current_user, form: @form).call
      else
        @form = Forms::WorkRecordForm.new(work_record_form_params)
        @form.record = @record
        @form.work = @record.work

        if @form.invalid?
          return render json: @form.errors.full_messages, status: :unprocessable_entity
        end

        Updaters::WorkRecordUpdater.new(user: current_user, form: @form).call
      end

      render json: {}, status: 200
    end

    private

    def episode_record_form_params
      params.required(:forms_episode_record_form).permit(:comment, :rating, :share_to_twitter)
    end

    def work_record_form_params
      params.required(:forms_work_record_form).permit(:comment, :rating_overall, :share_to_twitter)
    end
  end
end
