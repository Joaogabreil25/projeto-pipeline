const test = require('node:test');
const assert = require('node:assert');
const { somar, subtrair, multiplicar, dividir } = require('../src/calc');

test('soma', () => assert.strictEqual(somar(2, 3), 5));
test('subtração', () => assert.strictEqual(subtrair(5, 2), 3));
test('multiplicação', () => assert.strictEqual(multiplicar(4, 3), 12));
test('divisão', () => assert.strictEqual(dividir(10, 2), 5));
test('divisão por zero lança erro', () => assert.throws(() => dividir(1, 0)));
