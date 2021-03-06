# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module AdminConversations
          #
          # Archive a public or private channel.
          #
          # @option options [Object] :channel_id
          #   The channel to archive.
          # @see https://api.slack.com/methods/admin.conversations.archive
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/admin.conversations/admin.conversations.archive.json
          def admin_conversations_archive(options = {})
            throw ArgumentError.new('Required arguments :channel_id missing') if options[:channel_id].nil?
            post('admin.conversations.archive', options)
          end

          #
          # Convert a public channel to a private channel.
          #
          # @option options [Object] :channel_id
          #   The channel to convert to private.
          # @see https://api.slack.com/methods/admin.conversations.convertToPrivate
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/admin.conversations/admin.conversations.convertToPrivate.json
          def admin_conversations_convertToPrivate(options = {})
            throw ArgumentError.new('Required arguments :channel_id missing') if options[:channel_id].nil?
            post('admin.conversations.convertToPrivate', options)
          end

          #
          # Create a public or private channel-based conversation.
          #
          # @option options [Object] :is_private
          #   When true, creates a private channel instead of a public channel.
          # @option options [Object] :name
          #   Name of the public or private channel to create.
          # @option options [Object] :description
          #   Description of the public or private channel to create.
          # @option options [Object] :org_wide
          #   When true, the channel will be available org-wide. Note: if the channel is not org_wide=true, you must specify a team_id for this channel.
          # @option options [Object] :team_id
          #   The workspace to create the channel in. Note: this argument is required unless you set org_wide=true.
          # @see https://api.slack.com/methods/admin.conversations.create
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/admin.conversations/admin.conversations.create.json
          def admin_conversations_create(options = {})
            throw ArgumentError.new('Required arguments :is_private missing') if options[:is_private].nil?
            throw ArgumentError.new('Required arguments :name missing') if options[:name].nil?
            post('admin.conversations.create', options)
          end

          #
          # Delete a public or private channel.
          #
          # @option options [Object] :channel_id
          #   The channel to delete.
          # @see https://api.slack.com/methods/admin.conversations.delete
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/admin.conversations/admin.conversations.delete.json
          def admin_conversations_delete(options = {})
            throw ArgumentError.new('Required arguments :channel_id missing') if options[:channel_id].nil?
            post('admin.conversations.delete', options)
          end

          #
          # Disconnect a connected channel from one or more workspaces.
          #
          # @option options [Object] :channel_id
          #   The channel to be disconnected from some workspaces.
          # @option options [Object] :leaving_team_ids
          #   The team to be removed from the channel. Currently only a single team id can be specified.
          # @see https://api.slack.com/methods/admin.conversations.disconnectShared
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/admin.conversations/admin.conversations.disconnectShared.json
          def admin_conversations_disconnectShared(options = {})
            throw ArgumentError.new('Required arguments :channel_id missing') if options[:channel_id].nil?
            post('admin.conversations.disconnectShared', options)
          end

          #
          # Get conversation preferences for a public or private channel.
          #
          # @option options [Object] :channel_id
          #   The channel to get preferences for.
          # @see https://api.slack.com/methods/admin.conversations.getConversationPrefs
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/admin.conversations/admin.conversations.getConversationPrefs.json
          def admin_conversations_getConversationPrefs(options = {})
            throw ArgumentError.new('Required arguments :channel_id missing') if options[:channel_id].nil?
            post('admin.conversations.getConversationPrefs', options)
          end

          #
          # Get all the workspaces a given public or private channel is connected to within this Enterprise org.
          #
          # @option options [Object] :channel_id
          #   The channel to determine connected workspaces within the organization for.
          # @option options [Object] :cursor
          #   Set cursor to next_cursor returned by the previous call to list items in the next page.
          # @option options [Object] :limit
          #   The maximum number of items to return. Must be between 1 - 1000 both inclusive.
          # @see https://api.slack.com/methods/admin.conversations.getTeams
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/admin.conversations/admin.conversations.getTeams.json
          def admin_conversations_getTeams(options = {})
            throw ArgumentError.new('Required arguments :channel_id missing') if options[:channel_id].nil?
            if block_given?
              Pagination::Cursor.new(self, :admin_conversations_getTeams, options).each do |page|
                yield page
              end
            else
              post('admin.conversations.getTeams', options)
            end
          end

          #
          # Invite a user to a public or private channel.
          #
          # @option options [Object] :channel_id
          #   The channel that the users will be invited to.
          # @option options [Object] :user_ids
          #   The users to invite.
          # @see https://api.slack.com/methods/admin.conversations.invite
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/admin.conversations/admin.conversations.invite.json
          def admin_conversations_invite(options = {})
            throw ArgumentError.new('Required arguments :channel_id missing') if options[:channel_id].nil?
            throw ArgumentError.new('Required arguments :user_ids missing') if options[:user_ids].nil?
            post('admin.conversations.invite', options)
          end

          #
          # Rename a public or private channel.
          #
          # @option options [Object] :channel_id
          #   The channel to rename.
          # @option options [Object] :name
          #   .
          # @see https://api.slack.com/methods/admin.conversations.rename
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/admin.conversations/admin.conversations.rename.json
          def admin_conversations_rename(options = {})
            throw ArgumentError.new('Required arguments :channel_id missing') if options[:channel_id].nil?
            throw ArgumentError.new('Required arguments :name missing') if options[:name].nil?
            post('admin.conversations.rename', options)
          end

          #
          # Search for public or private channels in an Enterprise organization.
          #
          # @option options [Object] :cursor
          #   Set cursor to next_cursor returned by the previous call to list items in the next page.
          # @option options [Object] :limit
          #   Maximum number of items to be returned. Must be between 1 - 20 both inclusive. Default is 10.
          # @option options [Object] :query
          #   Name of the the channel to query by.
          # @option options [Object] :search_channel_types
          #   The type of channel to include or exclude in the search. For example private will search private channels, while private_exclude will exclude them. For a full list of types, check the Types section.
          # @option options [Object] :sort
          #   Possible values are relevant (search ranking based on what we think is closest), name (alphabetical), member_count (number of users in the channel), and created (date channel was created). You can optionally pair this with the sort_dir arg to change how it is sorted.
          # @option options [Object] :sort_dir
          #   Sort direction. Possible values are asc for ascending order like (1, 2, 3) or (a, b, c), and desc for descending order like (3, 2, 1) or (c, b, a).
          # @option options [Object] :team_ids
          #   Comma separated string of team IDs, signifying the workspaces to search through.
          # @see https://api.slack.com/methods/admin.conversations.search
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/admin.conversations/admin.conversations.search.json
          def admin_conversations_search(options = {})
            if block_given?
              Pagination::Cursor.new(self, :admin_conversations_search, options).each do |page|
                yield page
              end
            else
              post('admin.conversations.search', options)
            end
          end

          #
          # Set the posting permissions for a public or private channel.
          #
          # @option options [Object] :channel_id
          #   The channel to set the prefs for.
          # @option options [Object] :prefs
          #   The prefs for this channel in a stringified JSON format.
          # @see https://api.slack.com/methods/admin.conversations.setConversationPrefs
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/admin.conversations/admin.conversations.setConversationPrefs.json
          def admin_conversations_setConversationPrefs(options = {})
            throw ArgumentError.new('Required arguments :channel_id missing') if options[:channel_id].nil?
            throw ArgumentError.new('Required arguments :prefs missing') if options[:prefs].nil?
            post('admin.conversations.setConversationPrefs', options)
          end

          #
          # Set the workspaces in an Enterprise grid org that connect to a public or private channel.
          #
          # @option options [Object] :channel_id
          #   The encoded channel_id to add or remove to workspaces.
          # @option options [Object] :org_channel
          #   True if channel has to be converted to an org channel.
          # @option options [Object] :target_team_ids
          #   A comma-separated list of workspaces to which the channel should be shared. Not required if the channel is being shared org-wide.
          # @option options [Object] :team_id
          #   The workspace to which the channel belongs. Omit this argument if the channel is a cross-workspace shared channel.
          # @see https://api.slack.com/methods/admin.conversations.setTeams
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/admin.conversations/admin.conversations.setTeams.json
          def admin_conversations_setTeams(options = {})
            throw ArgumentError.new('Required arguments :channel_id missing') if options[:channel_id].nil?
            post('admin.conversations.setTeams', options)
          end

          #
          # Unarchive a public or private channel.
          #
          # @option options [Object] :channel_id
          #   The channel to unarchive.
          # @see https://api.slack.com/methods/admin.conversations.unarchive
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/admin.conversations/admin.conversations.unarchive.json
          def admin_conversations_unarchive(options = {})
            throw ArgumentError.new('Required arguments :channel_id missing') if options[:channel_id].nil?
            post('admin.conversations.unarchive', options)
          end
        end
      end
    end
  end
end
