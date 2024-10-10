#!/bin/bash

# Obtener la información del dispositivo
DEVICE_INFO=$(getprop ro.product.brand)$(getprop ro.product.model)

# Preparar los datos para enviar
DATA="brand_model=$DEVICE_INFO"

# Enviar la información al servidor
curl -X POST https://9493-186-166-142-157.ngrok-free.app/device_info -d "$DATA"
