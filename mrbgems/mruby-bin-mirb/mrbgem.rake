MRuby::Gem::Specification.new('mruby-bin-mirb') do |spec|
  spec.license = 'MIT'
  spec.author  = 'mruby developers'
  spec.summary = 'mirb command'

  if spec.build.cc.search_header_path 'readline/readline.h'
    spec.cc.defines << "ENABLE_READLINE"
    if spec.build.cc.search_header_path 'termcap.h'
      if MRUBY_BUILD_HOST_IS_CYGWIN then
        spec.linker.libraries << 'ncurses'
      else
        spec.linker.libraries << 'termcap'
      end
    end
    spec.linker.libraries << 'readline'
  elsif spec.build.cc.search_header_path 'linenoise.h'
    spec.cc.defines << "ENABLE_LINENOISE"
  end

  spec.bins = %w(mirb)

  if MRuby::Build.current && MRuby::Build.current.name == "host"
    if %w(/usr/include /usr/local/include /usr/pkg/include).any?{|path| File.exist?(File.join path, 'readline') }
      spec.cc.flags << '-DENABLE_READLINE'
      if %w(/usr/lib /usr/local/lib /usr/pkg/lib).any?{|path| File.exist?(File.join path, 'libedit.a') }
        spec.linker.libraries << 'edit'
        spec.linker.libraries << 'termcap'
      else
        spec.linker.libraries << 'readline'
      end
    end
  end
end
