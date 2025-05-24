#!/usr/bin/env node
const bashsh = require('./bashsh-0.js')

// Prototype of 'gs' implemented in node for startup performance testing purposes.

bashsh.cmd('git', 'status', ...bashsh.args())
