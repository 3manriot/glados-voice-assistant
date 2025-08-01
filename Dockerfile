FROM rhasspy/wyoming-piper:1.6.2

WORKDIR /app

COPY en_US-glados-medium.onnx /app/voices/en_US-glados-medium.onnx
COPY en_US-glados-medium.onnx.json /app/voices/en_US-glados-medium.onnx.json

CMD ["--data-dir", "/app/voices", "--download-dir", "/app/voices", "--voice", "en_US-glados-medium"]
