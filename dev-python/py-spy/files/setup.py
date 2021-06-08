from setuptools import setup
from setuptools_rust import Binding, RustExtension

setup(
    name="py-spy",
    version="0.3.7",
    rust_extensions=[RustExtension("py_spy", binding=Binding.PyO3)],
    packages=["py_spy"],
    # rust extensions are not zip safe, just like C-extensions.
    zip_safe=False,
)

