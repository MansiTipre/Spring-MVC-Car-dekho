package com.jspiders.springMVC.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jspiders.springMVC.DAO.CarDAO;
import com.jspiders.springMVC.dto.CarDTO;
import com.jspiders.springMVC.dto.UserDTO;
@Component
public class CarService {
//	@Autowired
//    public CarDAO carDAO;
//
//	public List<CarDTO> findAllCars() {
//		List<CarDTO> cars = carDAO.findAllCars();
//		if(cars!= null && cars.size()>0) {
//			return cars;
//		}else {
//			return null;
//		}
//		
//	}
//
//	public CarDTO addCar(String name, String brand, double price) {
//		CarDTO carDTO= new CarDTO();
//		carDTO.setName(name);
//		carDTO.setBrand(brand);
//		carDTO.setPrice(price);
//		return carDAO.addCar(carDTO);
//	}
//
//	public CarDTO findCarById(int id) {
//		
//		return carDAO.findCarById(id);
//	}
//	
//
//	public List<CarDTO> findCarsByUser(UserDTO signedInUser) {
//		List<CarDTO>cars=carDAO.findAllCarsByUser(signedInUser.getId());
//		if(cars!= null && cars.size()>0) {
//			return cars;
//		}else {
//			return null;
//		}
//	}
	
	
	@Autowired
	private CarDAO carDAO;

	public CarDTO addCar(String name, String brand, double price) {
		CarDTO carDTO = new CarDTO();
		carDTO.setName(name);
		carDTO.setBrand(brand);
		carDTO.setPrice(price);
		return carDAO.addCar(carDTO);
	}

	public List<CarDTO> findAllCars() {
		List<CarDTO> cars = carDAO.findAllCars();
		if (cars != null && cars.size() > 0) {
			return cars;
		} else {
			return null;
		}
	}

	public List<CarDTO> findAllCarsByUser(UserDTO signedInUser) {
		List<CarDTO> cars = carDAO.findAllCarsByUser(signedInUser.getId());
		if (cars != null && cars.size() > 0) {
			return cars;
		} else {
			return null;
		}
	}

	public void deleteCar(UserDTO signedInUser, int carId) {
		carDAO.deleteCar(signedInUser.getId(), carId);
	}

	public void updateCar(int id, String name, String brand, double price) {
		CarDTO car = new CarDTO();
		car.setId(id);
		car.setName(name);
		car.setBrand(brand);
		car.setPrice(price);
		carDAO.updateCar(car);
	}

	public CarDTO findCarById(int id) {
		return carDAO.findCarById(id);
	}

	public List<CarDTO> findAllCarsByPrice(double low, double high) {
		List<CarDTO> cars = carDAO.findAllCarsByPrice(low, high);
		if (cars != null && cars.size() > 0) {
			return cars;
		} else {
			return null;
		}
	}

}
