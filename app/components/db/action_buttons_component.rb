# frozen_string_literal: true

module Db
  class ActionButtonsComponent < ApplicationComponent
    def initialize(user:, resource:, detail_path:, edit_path:, publishing_path:)
      @user = user
      @resource = resource
      @detail_path = detail_path
      @edit_path = edit_path
      @publishing_path = publishing_path
    end

    def call
      Htmlrb.build do |el|
        el.div class: "btn-group btn-group-sm", role: "actions", "aria-label": "Actions" do
          if db_resource_policy.edit?
            el.a class: "btn btn-primary btn-sm", href: edit_path do
              I18n.t("noun.edit")
            end
          end

          if db_resource_policy.unpublish?
            el.a(
              class: "btn btn-sm #{publishing_btn_class}",
              data_method: publishing_method,
              data_confirm: t("messages._common.are_you_sure"),
              href: publishing_path
            ) do
              publishing_text
            end
          end

          if db_resource_policy.destroy?
            el.a(
              class: "btn btn-danger btn-sm",
              data_method: "delete",
              data_confirm: t("messages._common.are_you_sure"),
              href: detail_path
            ) do
              I18n.t("noun.delete")
            end
          end
        end
      end.html_safe
    end

    private

    attr_reader :detail_path, :edit_path, :publishing_path, :resource, :user

    def db_resource_policy
      @db_resource_policy ||= Pundit::PolicyFinder.new(resource).policy.new(user, resource)
    end

    def publishing_method
      resource.published? ? "delete" : "post"
    end

    def publishing_btn_class
      resource.published? ? "btn-warning" : "btn-success"
    end

    def publishing_text
      resource.published? ? I18n.t("noun.unpublish") : I18n.t("noun.publish")
    end
  end
end