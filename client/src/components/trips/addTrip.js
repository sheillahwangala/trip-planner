import React, { useState } from "react";

function AddTrip() {
    const [title, setTitle] = useState("")
    const [start_date, setStart_date] = useState("")
    const [end_date, setEnd_date] = useState("")

    const createTrip = (e) => {
        e.preventDefault();
        fetch("/trips", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                title: title,
                start_date: start_date,
                end_date: end_date,
            }),
        })
            .then((response) => response.json())
            .then((data) => {
                console.log(data);
            })
    }

    return (
        <div>
            <div>
                <input type="text"
                    placeholder="Trip Title"
                    className="mt-2 form-control"
                    value={title}
                    onChange={(e) => setTitle(e.target.value)}
                />

                <input type="text"
                    placeholder="Start Date"
                    className="mt-2 form-control"
                    value={start_date}
                    onChange={(e) => setStart_date(e.target.value)}
                />

                <input type="text"
                    placeholder="End Date"
                    className="mt-2 form-control"
                    value={end_date}
                    onChange={(e) => setEnd_date(e.target.value)}
                />

                <button
                    type="submit"
                    onClick={createTrip}
                    className="btn btn-primary my-4"
                >
                    Add Trip
                </button>
            </div>
        </div>
    )

}
export default AddTrip;