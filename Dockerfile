FROM jenkins/jenkins:lts-jdk11

USER root

# Install Node.js (18.x)
RUN apt-get update && \
    apt-get install -y curl gnupg && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Optional: verify versions
RUN node -v && npm -v

# Set back to jenkins user
USER jenkins
