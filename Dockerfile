FROM node
COPY ./ /app/

WORKDIR /app
RUN npm install 


ENV DB_URL="mongodb://hamburgeriaApp:h4mburger14App@localhost:27017/hamburgeria?ssl=false&authSource=admin&retryWrites=true&retryWrites=true&w=majority"
ENV PORT=8090
ENV DB_NAME="hamburgeria"

CMD  node ./server.js
# docker build -t hamburgeria-app .
# docker run --name hamburgeria-app -p 8090:8090 --network=hamburgeria-net  hamburgeria-app
