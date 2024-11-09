# haskell勉強用
lesson of haskell

devcontainerで環境をつくってください。</br>

```
runghc app/HelloWorld.h
```

もしくは下記</br>

app配下に新規で試したいプログラムを追加して、</br>
例えば、Factorial.hs</br>

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
