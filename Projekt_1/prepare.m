function prepare()

addpath 'config'
addpath 'mjs'
addpath 'ugen'
addpath 'Euler'
addpath 'power'

import config.*
import mjs.*
import ugen.*
import Euler.*
import power.*

global CFG uGen
config(-1,[]);
info=" ** Start **"