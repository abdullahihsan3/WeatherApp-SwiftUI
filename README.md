# WeatherApp-SwiftUI

Introducing WeatherApp: Your iOS app to subscribe to get the weather of your current location. Crafted with SwiftUI, this app, built on the clean architecture, empowers you to fetch latest weather related changes using the OpenWeatherMap API.

## Requirements
SwiftUI & Swift

## Architecture

The app is built using the clean architecture pattern. Here's a brief overview of the different layers:

- Model: The data layer that represents the app's data and business logic.
- View: The UI layer that displays the data to the user and handles user input.
- Managers: Managers are used to access other managers or views. 


## Usage

1. Clone the repository locally:

2. Update the OpenWeatherMap API key located in the constants file in the project

3. Run your project and fetch the current weather data directly from the API.


## Folder Structure

```
weatherapp/
|- Components/
|- Extensions/
|- Constants/
|- Views/
|- Managers/
|- PreviewContent/
```
