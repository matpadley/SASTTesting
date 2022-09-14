import { BrowserRouter, Route, Routes } from "react-router-dom";
import App from "../App";
import Msal from "../pages/Msal";
import NoPage from "../pages/noPage";
import ResponsiveAppBar from "./ResponsiveAppBar";

const Router = () => {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<ResponsiveAppBar />}>
          <Route index element={<App />} />
          <Route path="msal" element={<Msal />} />
          <Route path="*" element={<NoPage />} />
        </Route>
      </Routes>
    </BrowserRouter>
  );
};

export default Router;
