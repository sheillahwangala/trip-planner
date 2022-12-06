import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";

function Trips () {
    const [trips, setTrips ] = useState([]);

    useEffect(() => {
        fetch("/trips")
        .then((response) => response.json())
        .then((data) => setTrips(data));
    }, []);

    return(
        <div>
            <div>
                <table>
                    <tr>
                        <th>Trip Title</th>
                        <th>Start Date</th>
                        <th>End Date</th>
                    </tr>
                    {trips.map((trip, index) => {
                        return (
                            <tr key={trip.id}>
                                <td>{index +1} </td>
                                <td>
                                    <Link className="text-decoration-none text-dark"
                                    to={`/trips/${trip.id}`}>
                                        {trip.title}
                                    </Link>
                                </td>
                                <td>{trip.start_date }</td>
                                <td>{trip.end_date }</td>
                            </tr>
                        )
                    })}
                </table>
            </div>
        </div>
    )

}
export default Trips