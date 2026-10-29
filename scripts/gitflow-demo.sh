#!/usr/bin/env bash
# Roteiro do GitFlow para a apresentação. Execute os blocos um a um (não tudo de uma vez).
# Pré-requisito: repositório já criado e 'origin' configurado.

# 1) Criar develop
git checkout -b develop
git push -u origin develop

# 2) Feature
git checkout -b feature/subtracao-absoluta develop
echo "function absoluto(n) { return Math.abs(n); }
module.exports.absoluto = absoluto;" >> src/calc.js
git add . && git commit -m "feat: adiciona função absoluto"
git push -u origin feature/subtracao-absoluta
# -> Abra PR feature -> develop no GitHub e faça o merge
git checkout develop && git pull

# 3) Release
git checkout -b release/1.0.0 develop
git push -u origin release/1.0.0
# -> Abra PR release -> main e faça o merge (dispara o deploy)
git checkout main && git pull
git tag -a v1.0.0 -m "Versão 1.0.0"
git push origin v1.0.0
git checkout develop && git merge main && git push

# 4) Hotfix
git checkout -b hotfix/1.0.1 main
# ...corrija algo...
git add . && git commit -m "fix: correção urgente"
git push -u origin hotfix/1.0.1
# -> PR hotfix -> main, merge, tag v1.0.1, merge de main em develop

# 5) DEMONSTRAR FALHA: quebre um teste (ex.: troque 5 por 6 em test/calc.test.js),
#    faça push e mostre que o job 'deploy' é pulado.
