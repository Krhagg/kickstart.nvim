-- Save this script as ~/.config/nvim/lua/unmapped_keys.lua
local plenary = require 'plenary'

-- Function to get currently mapped keys in Normal mode
local function get_mapped_keys()
  local mapped_keys = {}
  local keys = vim.api.nvim_get_keymap 'n'
  for _, keymap in pairs(keys) do
    table.insert(mapped_keys, keymap.lhs)
  end
  return mapped_keys
end

-- Function to get all possible keys in Normal mode
local function get_all_possible_keys()
  local keys = {}
  for i = 32, 126 do -- ASCII printable characters
    table.insert(keys, string.char(i))
  end
  -- Add some common special keys
  local special_keys = {
    'å',
    'Å',
    'ä',
    'Ä',
    'ö',
    'Ö',
    '<Esc>',
    '<CR>',
    '<Tab>',
    '<BS>',
    '<Space>',
    '<C-A>',
    '<C-B>',
    '<C-C>',
    '<C-D>',
    '<C-E>',
    '<C-F>',
    '<C-G>',
    '<C-H>',
    '<C-I>',
    '<C-J>',
    '<C-K>',
    '<C-L>',
    '<C-M>',
    '<C-N>',
    '<C-O>',
    '<C-P>',
    '<C-Q>',
    '<C-R>',
    '<C-S>',
    '<C-T>',
    '<C-U>',
    '<C-V>',
    '<C-W>',
    '<C-X>',
    '<C-Y>',
    '<C-Z>',
  }
  for _, key in ipairs(special_keys) do
    table.insert(keys, key)
  end
  return keys
end

-- Function to get unmapped keys in Normal mode
local function get_unmapped_keys()
  local mapped_keys = get_mapped_keys()
  local all_keys = get_all_possible_keys()
  local unmapped_keys = {}
  for _, key in ipairs(all_keys) do
    if not vim.tbl_contains(mapped_keys, key) then
      table.insert(unmapped_keys, key)
    end
  end
  return unmapped_keys
end

-- Print unmapped keys
local function print_unmapped_keys()
  local unmapped_keys = get_unmapped_keys()
  print 'Unmapped keys in Normal mode:'
  for _, key in ipairs(unmapped_keys) do
    print(key)
  end
end

return {
  print_unmapped_keys = print_unmapped_keys,
}
