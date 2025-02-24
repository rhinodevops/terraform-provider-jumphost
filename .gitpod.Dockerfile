
FROM gitpod/workspace-full

RUN sudo apt update && sudo apt install -y socat \
    && curl -sLo watchexec.deb https://github.com/watchexec/watchexec/releases/download/cli-v1.17.1/watchexec-1.17.1-x86_64-unknown-linux-gnu.deb \
    && sudo dpkg -i watchexec.deb && rm watchexec.deb \
    && curl -L https://releases.hashicorp.com/terraform/1.0.5/terraform_1.0.5_linux_amd64.zip -o terraform.zip \
    && unzip terraform.zip \
    && sudo mv terraform /usr/local/bin/ \
    && rm terraform.zip
