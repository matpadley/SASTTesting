import { createTheme } from "@mui/material";

const Theme = createTheme({
  palette: {
    primary: {
      main: "#005432",
    },
    secondary: {
      main: "#f50057",
    },
  },
  typography: {
    h5: {
      fontWeight: 700,
      color: "inherit",
      textDecoration: "none",
    },
    h6: {
      fontWeight: 600,
      color: "inherit",
      textDecoration: "none",
    },
    fontFamily: "Congress Sans, 'Congress Sans',Helvetica,Arial,sans-serif",
  },
});
export default Theme;
