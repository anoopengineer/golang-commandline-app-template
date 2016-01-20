FROM scratch
ADD target/*/<PROJECT_NAME_HERE>*.tar.gz /
RUN mv /<PROJECT_NAME_HERE>_* /<PROJECT_NAME_HERE>
CMD ["/<PROJECT_NAME_HERE>/binary_name"]
