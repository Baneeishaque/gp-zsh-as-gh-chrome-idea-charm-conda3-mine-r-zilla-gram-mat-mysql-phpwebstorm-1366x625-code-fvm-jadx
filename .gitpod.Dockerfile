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

# RUN cd $HOME \
#  && wget https://github.com/java-decompiler/jd-gui/releases/download/v1.6.6/jd-gui-1.6.6.deb \
#  && sudo apt update \
#  && sudo apt install -y \
#      ./jd-gui-1.6.6.deb \
#  && sudo rm -rf /var/lib/apt/lists/* \
#  && rm jd-gui-1.6.6.deb

RUN cd $HOME \
 && wget https://github.com/java-decompiler/jd-gui/releases/download/v1.6.6/jd-gui-1.6.6.jar

RUN cd $HOME \
 && mkdir apktool \
 && cd apktool \
 && wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.6.0.jar \
 && mv apktool_2.6.0.jar apktool.jar \
 && chmod +x apktool apktool.jar

ENV PATH=$HOME/apktool:$PATH
