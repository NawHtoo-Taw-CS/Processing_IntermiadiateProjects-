//Variables
JSONObject jsonCurrentEdmonton = loadJSONObject ("http://api.openweathermap.org/data/2.5/weather?id=5946768&&4814e92d9e1ecf982ee9b574bc9d0b87=[?]&mode=JSON&units=metric");
JSONObject jsonForecastEdmonton = loadJSONObject ("http://api.openweathermap.org/data/2.5/forecast?id=5946768&&4814e92d9e1ecf982ee9b574bc9d0b87=[?]&mode=JSON&units=metric");

http://api.openweathermap.org/data/2.5/weather?id=5946768&APPID=4814e92d9e1ecf982ee9b574bc9d0b87&mode=JSON&units=metric
http://api.openweathermap.org/data/2.5/forecast?id=5946768&APPID=4814e92d9e1ecf982ee9b574bc9d0b87&mode=JSON&units=metric

/*
api.openweathermap.org/data/2.5/weather?
id=5946768
&APPID=4814e92d9e1ecf982ee9b574bc9d0b87
&mode=JSON&units=metric

api.openweathermap.org/data/2.5/forecast?
id=5946768
&APPID=4814e92d9e1ecf982ee9b574bc9d0b87
&mode=JSON&units=metric
*/


JSONArray list = jsonForecastEdmonton.getJSONArray ("list");
JSONObject all = list.getJSONObject (0);
int dt_forecast = all.getInt ("dt");


String currentTime = "http://www.convert-unix-time.com/api?timestamp=" + dt_forecast + "&timezone=Edmonton";
JSONObject localTimeJSONObject = loadJSONObject (currentTime);
String localDate = localTimeJSONObject.getString ("localDate");
println (localDate);

//Must test the API Called Data

//void setup() {}

//void draw() {}