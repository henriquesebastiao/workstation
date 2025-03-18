# Apps com Nix

Os executaveis contruídos com nix são criados com o comando:

```shell
nix-build script.nix
```

Iso irá gerar um executável em `./result/bin/script`, para executar esse executável de qualquer lugar do sistema, você deve adicioná-lo em algum lugar como `~/.local/bin/` e dar permissões de execução com `chmod +x ~/.local/bin/script`.