# File Extension Highlighting in Linux

Here is the `dir_colors` file and installation you need for your Linux server. This file goes in your home folder. 

```bash
chmod 775 installdir_colors
./installdir_colors
```

Add this line to your `.bashrc` or `.bash_profile`

```bash
eval $(dircolors ~/.dir_colors)
```

And then you should see:

![](/Linux/File_Extension_Highlighting/extension_highlighting.png)


