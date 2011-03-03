task :default => :devmode

desc 'Open a vim session for developing JellyX'
task :devmode do
  exec 'vim', '-S', 'scripts/jellyx-devmode.vim', 'colors/jellyx.vim'
end

desc 'Create a release tarball'
task :tarball do
  File.open 'jellyx.vim.tar.gz', 'w' do |f|
    Dir.chdir '..' do
      f.write %x(tar zcv jellyx.vim/README.markdown jellyx.vim/colors)
    end
  end
end
