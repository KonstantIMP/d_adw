# d_adw

Auto generated LibAdwaita bindings from the GIR API description using [girtod](https://code.dlang.org/packages/girtod).

To use this you need to use GtkD with GTK 4, which at the time of writing is not released to DUB yet.

To use GtkD with GTK 4 replace the gtk dependency or add it to your dub.json:

```json
"dependencies": {
	"gtk-d": {
		"repository": "git+https://github.com/gtkd-developers/GtkD.git",
		"version": "73b54335652b1712a569af81a02661b35d211244"
	}
}
```

or dub.sdl:

```sdl
dependency "gtk-d" repository="git+https://github.com/gtkd-developers/GtkD.git" version="73b54335652b1712a569af81a02661b35d211244"
```

Which pins GtkD to the specified commit. You can check for the latest commit on https://github.com/gtkd-developers/GtkD/tree/gtk4

Then to use d_adw, add it as git submodule or clone it into your project folder and add it as DUB dependency:

```json
"dependencies": {
	"d_adw": { "path": "d_adw" }
}
```

or dub.sdl:

```
dependency "d_adw" path="d_adw"
```
