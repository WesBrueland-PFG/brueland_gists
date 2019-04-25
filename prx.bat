:: Place this script within a directory under your PATH variable 
:: Passes through your desired command after unsetting your proxy variables and resets them after

IF DEFINED http_proxy (set http_temp=%http_proxy%) ELSE (set http_temp=)
IF DEFINED https_proxy (set http_temps=%https_proxy%) ELSE (set http_temp=)

SET http_proxy=
SET https_proxy=

%*

SET http_proxy=%http_temp%
SET https_proxy=%https_temp%
SET http_temp=
SET https_temp=
