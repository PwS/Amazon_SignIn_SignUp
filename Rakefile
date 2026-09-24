# frozen_string_literal: true

require 'cucumber/rake/task'
require 'rubocop/rake_task'

RuboCop::RakeTask.new(:lint)

namespace :test do
  desc 'Run every scenario'
  Cucumber::Rake::Task.new(:all)

  desc 'Run only the sign-in scenarios'
  Cucumber::Rake::Task.new(:sign_in) { |t| t.cucumber_opts = %w[--tags @sign_in] }

  desc 'Run only the sign-up scenarios'
  Cucumber::Rake::Task.new(:sign_up) { |t| t.cucumber_opts = %w[--tags @sign_up] }

  desc 'Check that every step has a definition, without opening a browser'
  Cucumber::Rake::Task.new(:dry_run) { |t| t.cucumber_opts = %w[--dry-run --strict --format progress] }
end

desc 'Lint and dry-run the suite (what CI runs)'
task default: %i[lint test:dry_run]
