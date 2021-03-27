FROM mltooling/ml-workspace:0.12.1

# Enter project-specific dependencies here
# for example: RUN pip install fastparquet google-cloud

LABEL "description"="Base layer for MAtsuura frequency analysis"

# End project dependencies

ENTRYPOINT ["/tini", "-g", "--"]

CMD ["python", "/resources/docker-entrypoint.py"]


EXPOSE 8080

