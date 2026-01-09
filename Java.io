public class WeatherAPIClient {

    public static void main(String[] args) {

        // Sample JSON response (simulating REST API data)
        String jsonResponse =
                "{ \"location\":\"Chennai\", " +
                "\"temperature\": 32.0, " +
                "\"windspeed\": 14.5, " +
                "\"weathercode\": 2 }";

        // Parse JSON manually
        String location = jsonResponse.split("\"location\":\"")[1].split("\"")[0];
        String temperature = jsonResponse.split("\"temperature\":")[1].split(",")[0];
        String windspeed = jsonResponse.split("\"windspeed\":")[1].split(",")[0];
        String weathercode = jsonResponse.split("\"weathercode\":")[1].split("}")[0];

        // Structured Output
        System.out.println("===== WEATHER REPORT =====");
        System.out.println("Location      : " + location);
        System.out.println("Temperature   : " + temperature + " °C");
        System.out.println("Wind Speed    : " + windspeed + " km/h");
        System.out.println("Weather Code  : " + weathercode);
        System.out.println("==========================");
    }
}
