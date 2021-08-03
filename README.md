* Pre req
  * Install NeoVim 0.5+
  * Install Vim Plug for NeoVim
  * Install desired language servers, I currently have TSSserver, Clangd, Texlab, etc.
  * Install Lua and Ripgrep. Using apt: ```sudo apt install lua5.4``` ```sudo apt install ripgrep```

* Install
  * Clone the repo into .config folder in your $HOME folder (dnt knw abt macos or windows haha lmao ok bye)
  * Open NeoVim. Do :PlugInstall and reopen NeoVim.
  
* LSP/Autocomplete
  * To add more LSP servers -
    * Install desired lsp server. (Ex: jdtls, rust-analyzer, jedi)
    * Open ```after/lspconfig.vim``` and add ```nvim_lsp.<lsp_server_name>.setup{ on_attach = on_attach, } ```

* Remaps
  * Remaps for each plugin in respective files in ```after/```. 
