{{- define "ui.labels" -}}
app: {{ .Values.app.labels.app }}
env: {{ .Values.app.labels.env }}
{{- end -}}