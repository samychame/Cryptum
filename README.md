# Cryptum - Cryptocurrency Education & Investment App

Cryptum is a web-based application designed to educate users about cryptocurrency and guide them in making informed investment decisions. It provides real-time cryptocurrency prices, investment insights, and a secure user authentication system.

## Features

-  **Real-time cryptocurrency price tracking** using **CoinGecko API**.
-  **User authentication** for secure access.
-  **Contact form** powered by **EmailJS**.
-  **Admin panel** for managing users and content.
-  **Interactive graphs** for price trends and investment analysis.
-  **Secure validation** for user inputs.

## Requirements

Ensure you have the following installed:

- **Visual Studio 2022** (for .NET development)
- **ASP.NET Web Forms**
- **SQL Server Database**
- **Git** (for version control)

## Setup Instructions

### 1 Clone the Repository

```sh
git clone https://github.com/samychame/Cryptum.git
cd Cryptum
```

### 2️ Open in Visual Studio 2022

1. Open **Visual Studio 2022**.
2. Click **File > Open > Project/Solution**.
3. Select **`myCryptum.sln`**.

### 3️ Restore Dependencies

```sh
dotnet restore
```

### 4️ Set Up the Database

Run the following SQL script in **SQL Server Management Studio (SSMS)**:

```sql
CREATE DATABASE CryptumDB;
USE CryptumDB;

CREATE TABLE Users (
    Email NVARCHAR(255) PRIMARY KEY,
    Password NVARCHAR(255) NOT NULL,
    FirstName NVARCHAR(100) NOT NULL,
    LastName NVARCHAR(100) NOT NULL,
    YearOfBirth INT NOT NULL,
    Gender NVARCHAR(10) NOT NULL
);
```

### 5️ Configure API Keys

Create a `config.js` file in `jsFiles/` with:

```js
const CONFIG = {
    EMAILJS: {
        SERVICE_ID: "your-emailjs-service-id",
        TEMPLATE_ID: "your-emailjs-template-id",
        PUBLIC_KEY: "your-emailjs-public-key"
    },
    API_KEYS: {
        COINGECKO: "your-coingecko-api-key"
    }
};
export default CONFIG;
```

 **DO NOT upload ********`config.js`******** to GitHub!**

### 6️ Run the Project

Press `F5` in **Visual Studio 2022** or use:

```sh
dotnet run
```


## Author

Developed by Samy Chame 

