FROM mcr.microsoft.com/playwright:v1.56.1-jammy
WORKDIR /test
RUN npx -y playwright@1.56.1 install --with-deps && \
    npm install dotenv --production
CMD ["npx", "playwright", "test"]
