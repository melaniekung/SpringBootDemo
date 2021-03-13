package com.csis3275.model_mku_03;

public class WeatherData_mku_03 {
	private int temperature;
	private boolean precipitation;
	private int humidity;

	public int getTemperature() {
		return temperature;
	}

	public void setTemperature(int temperature) {
		this.temperature = temperature;
	}

	public boolean getPrecipitation() {
		return precipitation;
	}

	public void setPrecipitation(boolean precipitation) {
		this.precipitation = precipitation;
	}

	public int getHumidity() {
		return humidity;
	}

	public void setHumidity(int humidity) {
		this.humidity = humidity;
	}

	public String getForcast() {

		String message = "";

		if (this.temperature <= 0) {
			message += "Cold ";
		} else if (this.temperature > 0 && this.temperature <= 14) {
			message += "Cool ";
		} else if (this.temperature > 15 && this.temperature < 18) {
			message += "Warm ";
		} else {
			message += "Hot ";
		}

		message += "temperatures with ";

		if (this.precipitation && this.temperature <= 0) {
			message += "Snow ";
		} else if (this.precipitation && this.temperature > 0) {
			message += "Rain ";
		} else {
			message += "Clear Skies ";
		}
		
		if (this.humidity < 10) {
			message += "and Dry";
		} else if (this.humidity > 10 && this.humidity < 50) {
			message += "and Misty";
		} else {
			message += "and Muggy";
		}

		return message;
	}

}
