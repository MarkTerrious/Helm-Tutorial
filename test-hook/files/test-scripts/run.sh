#!bin/sh

echo "installing curl..."
apk update && apk add --no-cache curl

echo "Excuting curl request to {{ .Release.Name }}"
curl http://{{ include "test-hook.fullname" . }}:{{ .Values.service.port }}