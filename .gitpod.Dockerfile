FROM baneeishaque/gp-zsh-as-gh-chrome-idea-charm-conda3-mine-r-zilla-gram-matlab-mysql-phpwebstorm-1366x625-code-fvm

# RUN brew install jadx \
#  && sed -i 's/DEFAULT_JVM_OPTS='"'"'"-Xms128M" "-Xmx4g" "-Dawt.useSystemAAFontSettings=lcd" "-Dswing.aatext=true" "-XX:+UseG1GC"'"'"'/DEFAULT_JVM_OPTS='"'"'"-Xms128M" "-Xmx4g" "-Dawt.useSystemAAFontSettings=lcd" "-Dswing.aatext=true" "-XX:+UseG1GC" "-Dsun.java2d.xrender=false"'"'"'/g' /home/linuxbrew/.linuxbrew/Cellar/jadx/1.2.0/libexec/bin/jadx-gui

RUN cd $HOME \
 && wget https://github.com/skylot/jadx/releases/download/v1.3.2/jadx-1.3.2.zip \
 && unzip jadx-1.3.2.zip -d jadx-1.3.2 \
 && rm jadx-1.3.2.zip \
 && sed -i 's/DEFAULT_JVM_OPTS=""/DEFAULT_JVM_OPTS='"'"'"-Dsun.java2d.xrender=false"'"'"'/g' $HOME/jadx-1.3.2/bin/jadx-gui

ENV PATH=$HOME/jadx-1.3.2/bin:$PATH

RUN cd $HOME \
 && wget https://github.com/pxb1988/dex2jar/releases/download/v2.2-SNAPSHOT-2021-10-31/dex-tools-2.2-SNAPSHOT-2021-10-31.zip \
 && unzip dex-tools-2.2-SNAPSHOT-2021-10-31.zip \
 && rm dex-tools-2.2-SNAPSHOT-2021-10-31.zip

ENV PATH=$HOME/dex-tools-2.2-SNAPSHOT:$HOME/dex-tools-2.2-SNAPSHOT/bin:$PATH
