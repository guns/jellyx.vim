require 'shellwords'

task :default => :dev

@args = %w[-S scripts/jellyx-devmode.vim colors/jellyx.vim]

desc 'Open a vim session for developing JellyX'
task :dev do
  exec 'vim', *@args
end

namespace :dev do
  desc 'Open a MacVim session for developing JellyX'
  task :mvim do
    exec 'mvim', *@args
  end
end

desc 'Create a release tarball'
task :tarball do
  File.open 'jellyx.vim.tar.gz', 'w' do |f|
    dir = File.basename Dir.pwd
    Dir.chdir '..' do
      files = %w[README.markdown colors].map { |f| File.join dir, f }
      f.write %x(tar zcv #{files.shelljoin})
    end
  end
end
