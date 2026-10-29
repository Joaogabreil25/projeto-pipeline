# Projeto Pipeline - Atividade Aula 07

Projeto Node.js simples (calculadora) com pipeline CI/CD no GitHub Actions.

## Pipeline (`.github/workflows/ci.yml`)
1. **Build**: gera a pasta `dist/`
2. **Testes**: roda `npm test` (só executa se o build passar)
3. **Deploy (simulado)**: só executa se os testes passarem e na branch `main`

Se qualquer estágio falhar, os seguintes não são executados.

## Rodar localmente
```bash
npm run build
npm test
npm start
```

## GitFlow
Branches: `main`, `develop`, `feature/*`, `release/*`, `hotfix/*`. Veja `scripts/gitflow-demo.sh`.
