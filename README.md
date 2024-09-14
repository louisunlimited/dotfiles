# Dotfiles

This is an attempt to have a single repository to store all of my configuration dotfiles for differnt
tools that I use.

## Tools

### tmux

Some handy shortcuts for splitting tmux views and a bit more

### nvim

I used to use dotfiles from an [old repo](https://github.com/louisunlimited/Neovim_Config) that I've archived now for my nvim setup.

This updated nvim configuration (still inspired by [Josean Martinez](https://www.youtube.com/watch?v=6pAG3BHurdM&t=1s)) was deliberately set up to be as minimal as possible and contains only the stuff
that I use (tho I feel I'm still on my way there, I'll continue to refine this repo as I go)

Currently nvim uses the following plugins:

- Lazy (package manager)
- Autopairs
- ColorScheme (lightfly)
- vimtex (for latex editing & previewing)
- markdown-preview
- telescope (fuzzy finder)
- nvim-tree (for a nice tree view of my files)
- treesitter (for syntax highlighting)
- linting
- formatting on save
- mason + lspconfig (for language servers auto completion)

I'll think about writing a more detailed post for my nvim setup.

### git

I have some custom git configurations that I'm happy about, so I put them here under `.gitconfig`

These are mainly command alias that I find easy to use, as well as a `autoSetupRemote = true` to
auto publish branches for a terminal guy like me :D

## How it works

All of my dotfiles under `$HOME` is being stored here in this repo and as a separate folder
`$HOME/dotfiles` under my home directory.

I'm then using [stow](https://www.gnu.org/software/stow/) to automatically symlink all of the files
under `$HOME/dotfiles` back to `$HOME` so all of my dotfiles are where they should be.

Adding a new configuration file might be a little annoying because I'd have to run

```
stow .
```

everytime a new file was added but after this everything works like a breeze.

I have also included a custom `/stow-local-ignore` to let `stow` know what files to not symlink.

Since all the files are symlinked, any edits done here will reflect directly to everywhere,
ensuring a single souce of truth. I find this approach a lot better than doing a bare git repo like
discussed in this [Atlassian Post](https://www.atlassian.com/git/tutorials/dotfiles)
