# haskell勉強用
lesson of haskell

devcontainerで環境をつくってください。</br>

app配下に新規で試したいプログラムを追加して、
例えば、Factorial.hs

そして、lesson-haskell.cabalに下記行を追加して

```hs
executable factorial
    import:           shared-settings
    main-is:          Factorial.hs
```

下記コマンドでbuild＆実行

```sh
cabal build factorial
cabal run factorial
```
