function prepare()

addpath 'config'
addpath 'mjs'
addpath 'ugen'

import config.*
import mjs.*
import ugen.*

global CFG uGen
config(-1,[]);
info=" ** Start **"