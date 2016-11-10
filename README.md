# sphinx-alpine-docker
sphinx-alpine-docker

sphinx:
    image: masterforweb/sphinx-alpine-docker
    restart: always
    links:
      - mysql
    volumes:
    - ./sphinx:/etc/sphinx/sphinx.conf
    - ./sphinx/data:/var/lib/sphinx/data
    - ./logs/sphinx:/var/log/sphinx
