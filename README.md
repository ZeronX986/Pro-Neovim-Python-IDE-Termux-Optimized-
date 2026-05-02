🛠️ Pro-Neovim Python IDE (Termux Optimized)
Created by ZeronX986
🌟 Overview
This init.vim configuration transforms Neovim into a powerful, lightweight Integrated Development Environment (IDE) specifically optimized for Python development on mobile devices via Termux. It balances performance with professional features like LSP support and real-time debugging.
✨ Key Features
Smart Auto-Indentation: Automatically handles Python indentation (4-space tabs) to prevent logic errors and ensure PEP8 compliance.  
Integrated LSP (Pyright): Provides real-time syntax checking, auto-completion, and error diagnostics as you type.  
Pro Debugging: Full support for debugpy to trace variables and fix bugs in complex scripts.  
Visual Excellence: Clean UI with line numbers, syntax highlighting, and custom error underlining for maximum focus.  
📥 Installation Requirements
To get the most out of this config on Termux, you need to install the following "engines":
1. System Packages:
a. pkg install nodejs python git.
b.pip install debugpy.
c.npm install -g pyrigh.
2. Plugin Manager (vim-plug)
You must have vim-plug installed to load the listed plugins.  
4. Python Development Tools
Run these commands to enable the LSP and Debugger features:
For LSP (Pyright): npm install -g pyright
For Debugging: pip install debugpy
🚀 How to use
Copy the init.vim file to your ~/.config/nvim/ directory.
Open Neovim and run :PlugInstall to download the professional extensions.  
Restart Neovim, and your Python IDE is ready!
