import reverse from '../../src/string/reverse';

test('reverse', () => {
  expect(reverse('hello')).toEqual('olleh');
  expect(reverse('')).toEqual('');
  expect(reverse('123')).toEqual('321');
});