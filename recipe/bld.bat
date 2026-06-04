chcp 65001
set PYTHONUTF8=1
set PYTHONIOENCODING="UTF-8"

%PYTHON% -m pip install . -vv --no-deps --no-build-isolation
if errorlevel 1 exit 1

cargo-bundle-licenses --format yaml --output THIRDPARTY.yml
if errorlevel 1 exit 1 
