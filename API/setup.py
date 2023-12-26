#!/usr/bin/env python3

from setuptools import setup

setup(
    name="zlrsimapi",
    description="ZilantRobotics Sim Api",
    author="ZilantRobotics",
    version = '0.1.3',
    python_requires=">=3.6.0",
    packages=["zlrsimapi"],
    install_requires=["grpcio", "grpcio-tools"],
    license="Other",
    classifiers=[
        "License :: Other/Proprietary License",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.6",
    ],
)
