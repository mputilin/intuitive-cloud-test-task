FROM ubuntu:22.04

# Set environment variables for non-interactive apt-get installation
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update \
    && apt-get install --no-install-recommends --yes \
    curl \
    iproute2 \
    sshfs \
    unzip \
    less \
    groff \
    && rm -rf /var/lib/apt/lists/*

# Install kubectl
RUN curl --location --output /usr/local/bin/kubectl https://dl.k8s.io/release/v1.23.6/bin/linux/amd64/kubectl \
    && chmod +x /usr/local/bin/kubectl

# Install AWS CLI
RUN curl --location --output awscliv2.zip https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm awscliv2.zip \
    && rm -rf ./aws

# Set the PATH variable to include kubectl and AWS CLI
ENV PATH="/usr/local/bin:${PATH}"

# Set the default command
CMD ["/bin/bash"]
