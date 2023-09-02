# NOQA: D100

from setuptools import find_packages
from setuptools import setup


setup(
    name="batlock666.minimalpackage",
    version="0.1.0",
    description="A minimal package.",
    author="Bert Vanderbauwhede",
    author_email="batlock666@gmail.com",
    url="https://github.com/batlock666/batlock666.minimalpackage",
    license="gpl-3.0-or-later",
    packages=find_packages(where="src"),
    package_dir={"": "src"},
)
