# Exemplos de Uso

Tendo em vista que minha memória não me ajuda muito às vezes, este arquivo vem com a ideia de exemplificar o uso de alguns dos aplicativos que tenho na lista de instalação. Alguns deles têm casos de uso muitos específicos e raramente são usados, logo pode ser necessário relembrar o que fazem. Abaixo listo exemplos de como usar alguns.

### brightnessctl

Esta ferramenta altera o brilho da tela.

```shell
# Retorna informações da tela
brightnessctl i

# Define o brilho da tela como 50%
brightnessctl -d intel_backlight s 50%
```

### picocom

Ferramenta para emular um terminal em dispositivos embarcados via conversor de serial para USB.

```shell
# Se conecta ao dispositivo na porta serial ttyUSB0 com um baudrate de 115200
picocom -b 115200 /dev/ttyUSB0
```