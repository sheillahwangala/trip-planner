import React from 'react';
import { BrowserRouter, Route, Routes } from 'react-router-dom';
import Template from './components/template/Template';
import Trips from './components/trips/trips';

function App() {
  return (
    <div>
      <BrowserRouter>
        <Template>
          <Routes>
            <Route path="/" index element={<Trips/>} />
          </Routes>
        </Template>
      </BrowserRouter>
    </div>
  )
}

export default App;
