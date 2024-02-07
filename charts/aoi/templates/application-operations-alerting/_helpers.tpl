{{/*
list of namespaces that should have alerting enabled
*/}}
{{- define "aoi.alerting.namespaces" -}}
  {{ $newList := list }}
    {{- if .Values.alerting.clusterWideNamespace.enabled }}
      {{ $newList = prepend .Values.alerting.namespaces .Values.alerting.clusterWideNamespace.name }}
    {{- else }}
      {{ $newList = .Values.alerting.namespaces }}
    {{- end }}
  {{ toJson $newList }}
{{- end }}

{{/*
HelmRepository for victoria-metrics-alert
*/}}
{{- define "aoi.alerting.helmRepository" -}}
  {{- range $i, $dep := .Chart.Dependencies }}
    {{- if eq $dep.Name "victoria-metrics-alert" }}
      {{- default $dep.Repository $.Values.alerting.helmRepository }}
    {{- end }}
  {{- end }}
{{- end }}

{{/*
HelmRepository type
*/}}
{{- define "aoi.alerting.helmRepository.type" -}}
  {{- if hasPrefix "oci" ( include "aoi.alerting.helmRepository" . ) }}
    {{- print "oci" -}}
  {{- else }}
    {{- print "default" -}}
  {{- end }}  
{{- end }}

{{/*
Helm chart version for victoria-metrics-alert
*/}}
{{- define "aoi.alerting.chartVersion" -}}
  {{- range $i, $dep := .Chart.Dependencies }}
    {{- if eq $dep.Name "victoria-metrics-alert" }}
      {{-  $dep.Version }}
    {{- end }}
  {{- end }}
{{- end }}

{{/*
promxy priority class name
*/}}
{{- define "aoi.serverPriorityClassName" -}}
{{- $pcn := coalesce .Values.global.priorityClassName .Values.alerting.helmRelease.values.server.priorityClassName -}}
{{- if $pcn -}}
priorityClassName: {{ $pcn }}
{{- end }}
{{- end }}

{{/*
promxy priority class name
*/}}
{{- define "aoi.alertmanagerPriorityClassName" -}}
{{- $pcn := coalesce .Values.global.priorityClassName .Values.alerting.helmRelease.values.alertmanager.priorityClassName -}}
{{- if $pcn -}}
priorityClassName: {{ $pcn }}
{{- end }}
{{- end }}


