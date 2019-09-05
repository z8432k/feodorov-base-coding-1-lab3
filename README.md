# Основы программирования. Лабораторная работа №3
[![Build Status](https://travis-ci.org/z8432k/feodorov-base-coding-lab3-19.svg?branch=master)](https://travis-ci.org/z8432k/feodorov-base-coding-lab3-19)

## Программирование поразрядных операций

### Вариант 19

![task](assets/task.png)

Сборка проекта:

```bash
make
```

В каталоге **bin** будут размещены две программы:

* pack - упаковщик даннх
* unpack - распаковщик данных

### Упаковка данных

```text
$ ./bin/pack 3 3 4095
Pack.

Channel number  :3
Signal form     :3
Division ratio  :4095

Encoded data    :FFFF
```

### Распаковка данных

```text
./bin/unpack FFFF
Unpack.

Encoded data    :FFFF

Channel number  :3
Signal form     :3
Division ratio  :4095
```
