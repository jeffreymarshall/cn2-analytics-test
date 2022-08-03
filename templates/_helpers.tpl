{{- define "storageInstallFlag" -}}
{{ if kindIs "invalid" .Values.storage.install }} 
{{- print "default" -}}
{{- else -}}
{{- print "%t" .Values.storage.install -}}
{{- end -}}
{{- end -}}

{{- define "installStorage" -}}
{{- if ne (include "storageInstallFlag" .) "default" -}}
{{- printf "%t" .Values.storage.install -}}
{{- else -}}
{{- if .Values.tags.centralClusterComponents -}}
{{- printf "%t" .Values.tags.centralClusterComponents -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "ambassadorInstallFlag" -}}
{{ if kindIs "invalid" (index .Values "emissary-ingress" "install") }}
{{- print "default" -}}
{{- else -}}
{{- print "%t" (index .Values "emissary-ingress" "install") -}}
{{- end -}}
{{- end -}}

{{- define "installAmbassador" -}}
{{- if ne (include "ambassadorInstallFlag" .) "default" -}}
{{- printf "%t" (index .Values "emissary-ingress" "install") -}}
{{- else -}}
{{- if .Values.tags.centralClusterComponents -}}
{{- printf "%t" .Values.tags.centralClusterComponents -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "fluentdInstallFlag" -}}
{{ if kindIs "invalid" .Values.fluentd.install }}
{{- print "default" -}}
{{- else -}}
{{- print "%t" .Values.fluentd.install -}}
{{- end -}}
{{- end -}}

{{- define "installFluentd" -}}
{{- if ne (include "fluentdInstallFlag" .) "default" -}}
{{- printf "%t" .Values.fluentd.install -}}
{{- else -}}
{{- if .Values.tags.centralClusterComponents -}}
{{- printf "%t" .Values.tags.centralClusterComponents -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "influxdb2InstallFlag" -}}
{{ if kindIs "invalid" .Values.influxdb2.install }}
{{- print "default" -}}
{{- else -}}
{{- print "%t" .Values.influxdb2.install -}}
{{- end -}}
{{- end -}}

{{- define "installInfluxdb2" -}}
{{- if ne (include "influxdb2InstallFlag" .) "default" -}}
{{- printf "%t" .Values.influxdb2.install -}}
{{- else -}}
{{- if .Values.tags.centralClusterComponents -}}
{{- printf "%t" .Values.tags.centralClusterComponents -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "openSearchDashboardsInstallFlag" -}}
{{ if kindIs "invalid" (index .Values "opensearch-dashboards" "install") }}
{{- print "default" -}}
{{- else -}}
{{- print "%t" (index .Values "opensearch-dashboards" "install") -}}
{{- end -}}
{{- end -}}

{{- define "installOpenSearchDashboards" -}}
{{- if ne (include "openSearchDashboardsInstallFlag" .) "default" -}}
{{- printf "%t" (index .Values "opensearch-dashboards" "install") -}}
{{- else -}}
{{- if .Values.tags.centralClusterComponents -}}
{{- printf "%t" .Values.tags.centralClusterComponents -}}
{{- end -}}
{{- end -}}
{{- end -}}
