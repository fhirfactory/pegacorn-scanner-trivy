# Copy PRDPKICA.crt to the root of your Docker build

From aquasec/trivy:latest

# SSL configuration for trivy database update behind corporate proxy [Error msg - x509: certificate signed by unknown authority]
COPY PRDPKICA.crt /usr/local/share/ca-certificates
RUN update-ca-certificates

ARG IMAGE_BUILD_TIMESTAMP
ENV IMAGE_BUILD_TIMESTAMP=${IMAGE_BUILD_TIMESTAMP}
RUN echo IMAGE_BUILD_TIMESTAMP=${IMAGE_BUILD_TIMESTAMP}
