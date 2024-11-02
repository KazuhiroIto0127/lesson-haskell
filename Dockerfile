FROM haskell:latest

ENV PATH="${PATH}:/root/.ghcup/bin:/root/.cabal/bin:/root/.ghc/bin"

# GHCup のインストール
RUN curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

# `source` コマンドを使って環境を有効化
RUN /bin/bash -c "source /root/.ghcup/env && ghcup install ghc 9.4.7 && ghcup set ghc 9.4.7"

# 必要なら GHC や Cabal の確認コマンド
RUN ghc --version && cabal --version
