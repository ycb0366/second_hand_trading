# Second-Hand Trading Platform

This project is a second-hand trading platform implemented using a B/S architecture with an MVC design framework. It allows users to browse, buy, and sell second-hand items, and provides comprehensive management features for administrators.

## 1.3.2 Main Technologies

### B/S Architecture
The Browser/Server (B/S) architecture is a model that improves upon the Client/Server (C/S) architecture with the rise of Internet technology. In this architecture, the user interface is implemented through a web browser, with minimal logic on the client side and the main business logic on the server side, forming a three-tier structure. This model simplifies client-side requirements and reduces system maintenance and upgrade costs. Common browsers like Microsoft Edge, Safari, or Netscape Navigator interact with databases such as Oracle, Sybase, Informix, or SQL Server through a Web Server.

### MVC Design Framework
The Model-View-Controller (MVC) framework separates the implementation of business logic (Model), user interface (View), and control logic (Controller). Originally developed for desktop applications, it allows different representations of the same data. MVC ensures synchronization between the Model and the View, so that any changes in the Model are reflected in the View. This design pattern, first developed for the Smalltalk-80 programming language, is widely used and has been recommended as a design pattern for Java EE and is popular among ColdFusion and PHP developers.

## Requirements Analysis

### 2.1 Visitor Functionality Requirements

#### (1) Browse and View:
Visitors can browse item information but cannot purchase, leave messages, or perform other actions that require logging in.

#### (2) Registration Guide:
Visitors can fill in necessary information on the registration page to complete the registration process and become registered users of the system.

### 2.2 User Functionality Requirements

#### (1) Login Function:
Users can access the system using their account credentials.

#### (2) Main Interface Display:
The system homepage displays second-hand items categorized by type, making it easy for users to quickly browse and find the items they need.

#### (3) Item Posting:
Users can post their idle items using the item posting button. They can upload item names, detailed information, location, category, price, and related images.

#### (4) Messaging Module:
Users can leave comments on item information pages, view messages related to items, and see the time, content, and related item information of their comments.

#### (5) Item Purchase Module:
Users can purchase items using the "Buy Now" button. First-time buyers need to enter their shipping address, and after filling in the necessary information, they can complete the payment process.

#### (6) Favorites Module:
Users can add items they like to their favorites for easy retrieval later.

#### (7) Item Removal Module:
Users can remove their posted items from sale if they no longer wish to sell them.

#### (8) Sales and Purchase Modules:
Users can view their sales in the sales module and track their sales status. In the purchase module, users can view their purchase history.

#### (9) Personal Profile:
Users can maintain their personal information such as name and password to enhance account security.

#### (10) Logout Module:
Users can log out after using the system to ensure security and prevent unauthorized access.

### 2.3 Administrator Functionality Requirements

#### (1) Login:
Administrators can access the system using their account credentials.

#### (2) User Management:
Administrators can add, delete, modify user information, and view user lists. They can manage and control user information and behavior, including viewing user details and transaction records.

#### (3) Item Management:
Administrators can add, delete, modify item information, and view item lists. They can manage and control item information and transactions, including viewing item details and transaction records.

#### (4) Order Management:
Administrators can view transaction information and manage transactions. They can view transaction details, including items, time, and amount, and audit transactions.

#### (5) Logout Module:
Administrators can log out after using the system to ensure security and prevent unauthorized access.

