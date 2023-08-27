FROM ruby:3.1.4

RUN apt-get update && \
  apt-get install -y build-essential && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN mkdir /app
WORKDIR /app
COPY Gemfile* ./

RUN bundle install

COPY . .

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
