# Sprocketize: Command-line utility for the Sprockets gem

# Usage #

    Usage: sprocketize [options] output_directory filename [filename ...]
        -a, --asset-root=DIRECTORY       Assets root path.
        -I, --include-dir=DIRECTORY      Adds the directory to the Sprockets load path.
        -d, --digest                     Incorporates a MD5 digest into all filenames.
        -m, --manifest [=DIRECTORY]      Writes a manifest for the assets. If no directory is
                                         specified the manifest will be written to the output directory.
        -g, --gzip                       Also create a compressed version of all Stylesheets and Javascripts.
        -s, --save                       Add given parameters to .sprocksrc
        -j [=COMPRESSOR],                Compress all Javascript using either closure, yui or uglifier. If no
                                         compiler is specified closure will be used.
            --compress-javascripts
        -c, --compress-stylesheets       Compress all Stylesheets with the YUI CSS compressor.
        -h, --help                       Show this help message.
        -v, --version                    Show version.

The options can also be set through a local options file in the asset root or through a global file in your
home directory. `target`, `assets` and `manifest_path` are ignored when set in the global file.

    #.sprocksrc
    ---
    target: target output directory
    paths:
    - include paths
    assets:
    - all files here will be compiled
    manifest: true or false
    manifest_path: output path for the manifest file
    digest: true or false
    gzip: true or false
    js_compressor: either closure, yui or uglifier
    compress_css: true or false

Include paths should always be absolute. Asset paths are always relative to the asset root. The other paths can either
be absolute or relative. Relative paths are always relative to the asset root.

# License #

Copyright &copy; 2011 Mato Ilic <<info@matoilic.ch>>

Sprockets is distributed under an MIT-style license. See LICENSE for
details.
