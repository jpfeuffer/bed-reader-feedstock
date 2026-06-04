# Based on the build.sh for the pysyntect-feedstock recipe.
# https://github.com/conda-forge/pysyntect-feedstock/
set -ex

# Build package via pip
$PYTHON -m pip install . -vv --no-deps --no-build-isolation

# Bundle all downstream library licenses
cargo-bundle-licenses --format yaml --output THIRDPARTY.yml
