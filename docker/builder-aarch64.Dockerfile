FROM amazonlinux:2023

RUN dnf install -y tar git gcc && dnf clean all

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y \
    --default-toolchain 1.93.0 \
    --profile minimal

ENV PATH="/root/.cargo/bin:${PATH}"
