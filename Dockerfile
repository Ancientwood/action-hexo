FROM node:10

LABEL version="2.0.0"
LABEL repository="http://github.com/Ancientwood/action-hexo"
LABEL homepage="https://Ancientwood.github.io"

LABEL com.github.actions.name="GitHub Action for hexo"
LABEL com.github.actions.description="Wraps the hexo CLI to enable common hexo commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="red"

RUN apt-get update  && \
    apt-get install -y git-core git bash


RUN npm install -g hexo
RUN npm install hexo --save
RUN npm install hexo-deployer-git --save

COPY "entrypoint.sh" "/entrypoint.sh"
CMD ["chmod +x /entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]

CMD ["help"] 
