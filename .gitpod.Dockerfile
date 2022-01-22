FROM baneeishaque/gp-zsh-as-gh-chrome-idea-charm-conda3-mine-r-zilla-gram-matlab-mysql-phpwebstorm-1366x625-code-fvm

RUN brew install jadx \
 && sed -i 's/DEFAULT_JVM_OPTS='"'"'"-Xms128M" "-Xmx4g" "-Dawt.useSystemAAFontSettings=lcd" "-Dswing.aatext=true" "-XX:+UseG1GC"'"'"'/DEFAULT_JVM_OPTS='"'"'"-Xms128M" "-Xmx4g" "-Dawt.useSystemAAFontSettings=lcd" "-Dswing.aatext=true" "-XX:+UseG1GC" "-Dsun.java2d.xrender=false"'"'"'/g' /home/linuxbrew/.linuxbrew/Cellar/jadx/1.2.0/libexec/bin/jadx-gui
