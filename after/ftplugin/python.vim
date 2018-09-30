let deoplete#sources#jedi#python_path = '/Users/evanporter/venvs/py3nvim/bin/python'

let b:ale_linters = ['pylint']

let b:ale_fixers = {
\   'python': ['remove_trailing_lines', 'trim_whitespace'],
\}

let b:ale_fix_on_save = 1
