local function get_today_date()
    -- Use os.date to get today's date in the format "YY-MM-DD"
    local today = os.date("%Y-%m-%d")
    return today
end

local function notify(message)
 os.execute(string.format('notify-send "%s"', message))
end

local function insert_markdown_diary_preamble()
    -- Check if the current file is a Markdown file in Vimwiki
    if vim.bo.filetype == 'vimwiki' and vim.fn.expand('%:e') == 'md' then
        -- Check if the file is empty or only contains whitespace
        if vim.fn.getline(1) == '' then
            local today = get_today_date()
            -- Insert the preamble
            vim.fn.setline(1, '# ' .. today .. '')
            -- Move the cursor to the end of the preamble
            vim.fn.cursor(2, 1)
            vim.api.nvim_feedkeys('A', 'n', true)
            notify("Preamble has been generated")
        else
            -- If the file is not empty, display a message
            print("File is not empty. Preamble not inserted.")
        end
    else
        -- If the current file is not a Markdown file in Vimwiki, display a message
        print("Not a Markdown file in Vimwiki. Preamble not inserted.")
    end
end
-- Map a key to call the function, for example, <Leader>p
vim.api.nvim_create_user_command('InsertDiaryPreamble', insert_markdown_diary_preamble, {})
vim.api.nvim_set_keymap('n', '<Leader>P', ':InsertDiaryPreamble<CR>', {noremap = true, silent = true})
