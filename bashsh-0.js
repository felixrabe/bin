// Partial port of bashsh-0 to JS

const childProcess = require('child_process')

const args = () => process.argv.slice(2)
const bold = '\033[1m'
const normal = '\033[0m'

// abc => abc
// 'abc' => "'abc'"
// "abc" => "\"abc\""
// abc def => "abc def"
const pretendEscape = (s) => {
  if (!/[\\$"' ]/.test(s)) return s
  return '"' + (
    s
      .replace(/\\/g, '\\\\')
      .replace(/\$/g, '\\$')
      .replace(/"/g, '\\"')
  ) + '"'
}

const cmd = (...args) => {
  echo(...quoted(...args))
  childProcess.spawnSync(args[0], args.slice(1), {
    encoding: 'utf-8',
    stdio: 'inherit',
  })
}

const echo = (...args) => {
  process.stderr.write(bold)
  process.stderr.write(args.join(' ') + '\n')
  process.stderr.write(normal)
}

const msg = (...args) => {
  echo('# ' + args[0], ...args.slice(1))
}

const quoted = (...args) => args.map(pretendEscape)

module.exports = {
  args,
  bold,
  normal,

  cmd,
  echo,
  msg,
  quoted,
}
