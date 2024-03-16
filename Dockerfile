FROM --platform=linux/amd64 ghcr.io/kankerdev/vaultwarden_web:v2024.1.2 as vault

FROM --platform=$TARGETPLATFORM ghcr.io/dani-garcia/vaultwarden:1.30.5

COPY --from=vault /web-vault ./web-vault
