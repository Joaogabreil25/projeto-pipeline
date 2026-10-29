const fs = require('fs');
fs.rmSync('dist', { recursive: true, force: true });
fs.mkdirSync('dist', { recursive: true });
for (const f of fs.readdirSync('src')) fs.copyFileSync(`src/${f}`, `dist/${f}`);
console.log('Build concluído: arquivos copiados para dist/');
