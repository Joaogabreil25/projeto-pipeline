function somar(a, b) { return a + b; }
function subtrair(a, b) { return a - b; }
function multiplicar(a, b) { return a * b; }
function dividir(a, b) {
  if (b === 0) throw new Error('Divisão por zero');
  return a / b;
}
module.exports = { somar, subtrair, multiplicar, dividir };

function absoluto(n) { return Math.abs(n); }
module.exports.absoluto = absoluto;
