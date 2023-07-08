local path_to_lombok = '/home/karanp/.local/share/nvim/mason/packages/jdtls/lombok.jar'
local config = {
    cmd = {
        '/home/karanp/.local/share/nvim/mason/bin/jdtls',
        '-javaagent:' .. path_to_lombok
    },
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),

}
require('jdtls').start_or_attach(config)
