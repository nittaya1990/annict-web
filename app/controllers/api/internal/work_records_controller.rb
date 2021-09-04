# frozen_string_literal: true

module Api::Internal
  class WorkRecordsController < Api::Internal::ApplicationController
    before_action :authenticate_user!

    def create
      @form = Forms::WorkRecordForm.new(work_record_form_params)
      @form.work = Work.only_kept.find(params[:work_id])

      if @form.invalid?
        return render json: @form.errors.full_messages, status: :unprocessable_entity
      end

      Creators::WorkRecordCreator.new(user: current_user, form: @form).call

      head :created
    end

    private

    def work_record_form_params
      params.require(:forms_work_record_form).permit(
        :body, :rating, :animation_rating, :character_rating, :music_rating, :story_rating, :share_to_twitter
      )
    end
  end
end
