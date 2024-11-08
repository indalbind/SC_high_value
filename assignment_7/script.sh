#!/bin/bash

if [[ -z "$1" ]]; then
    exit 1
fi

CITY=$1
API_URL="http://weather.local/api/v1/city/${CITY}.json"
DATA=$(curl -s "$API_URL")

if [[ -z "$DATA" ]]; then
    exit 1
fi

case "$2" in
    -C)
        case "$3" in
            min)
                echo "$DATA" | jq -c '{name: .name, temp_min: .main.temp_min}' | jq --indent 4 '.'
                ;;
            max)
                echo "$DATA" | jq -c '{name: .name, temp_max: .main.temp_max}' | jq --indent 4 '.'
                ;;
            current)
                TEMP=$(echo "$DATA" | jq '.main.temp')
                FAHRENHEIT=$(printf "%.2f" "$(echo "$TEMP * 9 / 5 + 32" | bc -l)")
                echo "$DATA" | jq -c --argjson fahrenheit "$FAHRENHEIT" '{name: .name, temp: .main.temp, F: $fahrenheit}' | jq --indent 4 '.'
                ;;
            *)
                exit 1
                ;;
        esac
        ;;
    -W)
        WIND_SPEED=$(echo "$DATA" | jq '.wind.speed')
        SQRT_SPEED=$(printf "%.2f" "$(echo "sqrt($WIND_SPEED)" | bc -l)")
        echo "$DATA" | jq -c --argjson sqrt_speed "$SQRT_SPEED" '{name: .name, speed: .wind.speed, sqrtspeed: $sqrt_speed}' | jq --indent 4 '.'
        ;;
    -S)
        DATE=$(date "+%d/%m/%Y")
        SUNRISE=$(date -d @"$(echo "$DATA" | jq '.sys.sunrise')" "+%H:%M:%S")
        SUNSET=$(date -d @"$(echo "$DATA" | jq '.sys.sunset')" "+%H:%M:%S")
        jq -n --arg city "$(echo "$DATA" | jq -r '.name')" --arg date "$DATE" --arg sunrise "$SUNRISE" --arg sunset "$SUNSET" '[$city, $date, $sunrise, $sunset]' | jq --indent 4 '.'
        ;;
    *)
        exit 1
        ;;
esac
