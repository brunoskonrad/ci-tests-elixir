This runs a build for a small elixir (phoenix) project in about 40 seconds by caching as much of the compiled files as possible.

We've been using this for months in multiple projects without any issues. Please ping be if there is any issues with this script and I'll update it.

It should be generic enough to work on any elixir app using mix.

If you have a `elixir_buildpack.config`, then enable that section in the build script to keep versions in sync!