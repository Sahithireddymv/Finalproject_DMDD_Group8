
<h1 align="center">RED EYE MANAGEMENT SYSTEM</h1>

<h2 align="center">“There are no big problems, there are just a lot of little problems”</h2>

<p align="center" width="100%">
    <img width="33%" src="https://user-images.githubusercontent.com/113794059/216233418-a775ecc7-41fb-43e0-84b4-ae56816817db.png">
     <img width="33%" src="https://user-images.githubusercontent.com/113794059/216233538-74e28fa4-d13d-4b13-8f17-b5a7f006d73d.png">
</p>

<h3>Overview:</h3>






In this project we will create a centralized database for “RedEye”, Northeastern University’s application to facilitate functionalities like pick up, drop service, searching schedule, cancelling, and booking for both the students and the faculty. It will also be inclusive of Bus facility, where the passengers who have nearby drop or pickup location can use this feature to travel via bus and save their time. This will improve the waiting time and will help students and faculty with better transportation facilities. The goal is to improve transportation services for students, staff, and visitors, and to streamline operations for the transportation department. The system may also provide real-time tracking of vehicles and information on capacity utilization, making it easier to plan and manage transportation services effectively.
 
<h3>Background:</h3>
Many students in Northeastern University do not live on campus due to limited housing facilities, so they opt for housing near the university. Due to different schedules and availability, students are usually caught up at the university at odd timings. Staying at the campus for extended periods of time, some students are at the library, some working on campus, and some may be working out or training for their respective rec activities. Northeastern University for this purpose provides a drop-off facility called Redeye which provides free transport to university students from the university to their drop-off locations given that the drop-off locations be within a 2-mile radius of the university. A centralized database will allow the students or faculty to be able to book the Redeye facility to utilize features like pick-up/drop to the desired location. By reducing data redundancy and setting the pick-up location as Snell library by default can optimize the booking time and ensure students and faculties can find a redeye easier.

<h3>Purpose:</h3>
•	Streamline Transportation Operations: To optimize transportation operations by automating scheduling, cancelling, and tracking of vehicles, drivers, and the passengers<br>
•	Improve Passengers Experience: The database system will provide students and the staff with up-to-date information on the availability of Redeye transportation services and help them plan their commutes more effectively<br>
•	Increase Efficiency: To reduce manual processes and help streamline communication between drivers, passengers, and management staffs, leading to increased efficiency<br>
•	Safety and security: The system will enhance safety and security for passengers by monitoring the location of vehicles and providing real-time information to drivers and passengers.<br>
•	Enhanced Analytics: The database system will provide enhanced analytics capabilities, including detailed reports and insights into transportation trends and patterns<br>

<h3>Key Database Design Decisions:</h3>
Database will store, handle, and retrieve the required data from each application entity. The database will form a collection of different attributes and will display it to the user when required.  

Here are some key design decisions that we will inherit in our system:

Design of the user interface: Since students and staff will primarily engage with the transport management system through its user interface, it is essential for the system's success. The design will be user-friendly, and it will be visually appealing and adhere to the university's branding. 

Data model design: The red eye management system will have a data model that is well thought out and captures all relevant data regarding the students, staff, vehicles, routes, stops, trips, and reservations. The data model will be built to provide quick data changes and maintenance as well as effective reporting and querying. 

Performance and scalability: To be able to handle huge volumes of data and users, the system will be designed for performance and scalability. Utilizing effective algorithms and data structures, streamlining database queries, and making use of caching and other performance-improving strategies are all part of this. 

Testing and quality control: To make sure the transport management system is free of faults and problems; it will be rigorously tested and subject to quality control. This entails applying best practices for software quality assurance as well as establishing a thorough testing plan that includes unit tests, integration tests, and user acceptability testing. 

Entities and their Relationship 

The following are the different entities stored in the database. 

1. Person: This entity represents the person who can be either Passenger, Driver, or Police Officer. The person entity will play role in deciding the type of person and depending on that it will follow a specific path like if the person type is Passenger, it will have the facility to book, cancel, or raise a query. Or, if the person type is NU Police, they will handle the queries raised by the passengers. 

2. NUPolice: This entity represents the police officer who handles the queries or concerns raised by the passenger. 

3. Passenger: This entity represents the students who use the transport system. The passenger entity is crucial for handling bookings, monitoring usage, and offering specialized services. 

4. Drivers: This entity represents the drivers who operate the transport system. The driver entity is crucial for making sure that safety requirements are followed 

5. Query: This entity will hold the description about the query raised and the details about the Police officer handling the query 

6. Schedule: This entity represents the schedule of each route where the vehicles pick up and drop off passengers.  

7. Cancellation: This entity represents the cancellation made by the passenger for a trip on a particular route. The cancellation entity is important for controlling capacity 

8. Booking: This entity represents the booking made by the passenger for a trip on a particular route. Each booking has a unique identifier, such as a BookingID, and may have additional attributes like date, time, status, and number of passengers. The Booking entity is important for controlling capacity, monitoring usage, and offering passengers specialized services 

9. Route: This entity represents the different routes available for the transport system. The route entity is crucial for overseeing assignments, monitoring progress, and informing students 

10. Passenger Location: This entity holds the details of the passenger address. 

11. Vehicle: This entity represents the vehicles used in the transport system. The vehicle entity is crucial for guaranteeing reliability and safety. Vehicle can be of two types i.e., Van or Bus 

<h3>Business Rules:</h3> 

Below are some of the possible Business Rules that will be implemented in our system: - 

Only students with valid student IDs are permitted to make bookings for trips. 

At least one driver must be assigned to every journey. 

Only one trip can be assigned to a vehicle at once. 

Each stop must have a distinct name and address. 

Each vehicle must have a specific capacity that cannot be surpassed on any journey. 

The system should only allow reservations to be made for trips that have available seats. 

Students should be able to cancel their reservations through the system up to a specific time before the trip. 

The system should generate reports on the utilization of vehicles, drivers, and routes. 

It should be possible for the system to handle unique requests, such as modifications for students with impairments, and to aid students in an emergency. 

Only reservations for trips with open seats should be accepted by the system. 


<br>Project Group Details<br>
Group: 8<br>
Group Members: Lan Gao, Raghav Goswami, Ruchi Upadhyay, Sahithi Reddy Marapadaga Venkata, Shivani Shekhawat
