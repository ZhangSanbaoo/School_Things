version: '3'
services:
    jupyter:
        image: jupyter/minimal-notebook
        ports:
            - "8888:8888"
