package com.csis3275.controller_mku_03;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.csis3275.model_mku_03.WeatherData_mku_03;

@Controller
public class WeatherController_mku_03 {
	@RequestMapping("/")
	public String presentForm(ModelMap model) {
		model.addAttribute("weatherData", new WeatherData_mku_03());
		return "weatherForm";
	}

	@PostMapping("/forcastWeather")
	public String forcaseWeather(WeatherData_mku_03 weatherData, BindingResult result, ModelMap model) {
		System.out.println("Temperature: " + weatherData.getTemperature());
		System.out.println(weatherData.getForcast());
		model.addAttribute("forcast", weatherData.getForcast());
		model.addAttribute("weatherData", new WeatherData_mku_03());

		return "weatherForm";
	}

}
