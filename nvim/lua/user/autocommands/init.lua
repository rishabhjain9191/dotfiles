local augroup = vim.api.nvim_create_augroup
local autocommand = vim.api.nvim_create_autocmd;

local MyGroup = augroup("MyGroup", {});

-- Move to utils
local format = function ()
 vim.lsp.buf.format { async = false } 
end

-- auto save on leaving buffer
autocommand('BufLeave', {
  group = MyGroup,
  pattern = { "*.ts", "*.tsx" },
  callback = function()
    if vim.o.modified then
      format()
      vim.api.nvim_command('write');
    end
  end
});

-- auto format on changing buffer
autocommand('BufWritePre', {
  group = MyGroup,
  pattern = { "*.ts", "*.tsx" },
  callback = function()
    format()
  end
});

