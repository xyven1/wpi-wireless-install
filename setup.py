#!/usr/bin/env python

from setuptools import find_packages, setup

setup(
    name="eduroam-install",
    version="0.1",
    packages=find_packages(),
    entry_points={
        "console_scripts": ["eduroam-install = eduroam_install.main:run"]
    },
    install_requires=["dbus-python"],
)
