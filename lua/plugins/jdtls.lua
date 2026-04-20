return {
    "mfussenegger/nvim-jdtls",
    ft = "java",
    config = function()
        vim.api.nvim_create_autocmd("FileType", {
            pattern = "java",
            callback = function()
                require("jdtls").start_or_attach({
                    cmd = { "jdtls" }, -- mason puts this on PATH
                    root_dir = vim.fs.root(0, { ".git", "mvnw", "gradlew", "pom.xml" }),
                    data = vim.fn.stdpath("cache") .. "/jdtls/" ..
                        vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t"),
                })
            end,
        })
    end,
}
