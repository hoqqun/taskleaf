class Message < ApplicationRecord
  scope :recent, -> { order(id: :desc) }

  after_create_commit {MessageBroadcastJob.perform_later self }
end
