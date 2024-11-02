import { Box, IconButton, useTheme, Menu, MenuItem, Typography } from "@mui/material";
import { useContext, useState } from "react";
import { ColorModeContext, tokens } from "../../theme";
import InputBase from "@mui/material/InputBase";
import LightModeOutlinedIcon from "@mui/icons-material/LightModeOutlined";
import DarkModeOutlinedIcon from "@mui/icons-material/DarkModeOutlined";
import NotificationsOutlinedIcon from "@mui/icons-material/NotificationsOutlined";
import SettingsOutlinedIcon from "@mui/icons-material/SettingsOutlined";
import PersonOutlinedIcon from "@mui/icons-material/PersonOutlined";
import SearchIcon from "@mui/icons-material/Search";
import ExitToAppIcon from "@mui/icons-material/ExitToApp";
import { useNavigate } from "react-router-dom"; // Importa useNavigate

const Topbar = ({ setIsAuthenticated }) => {
  const theme = useTheme();
  const colors = tokens(theme.palette.mode);
  const colorMode = useContext(ColorModeContext);
  
  // Configura useNavigate
  const navigate = useNavigate(); 

  // Estados para controlar el menú
  const [anchorEl, setAnchorEl] = useState(null);
  const isMenuOpen = Boolean(anchorEl);

  // Funciones para manejar la apertura y cierre del menú
  const handleMenuOpen = (event) => {
    setAnchorEl(event.currentTarget);
  };

  const handleProfileClick = () => {
    handleMenuClose(); // Cierra el menú si es necesario
    navigate('/profile'); // Navega a la ruta '/profile'
  };

  const handleMenuClose = () => {

    setAnchorEl(null);
  };

  // Función para manejar el logout
  const handleLogout = () => {
    localStorage.removeItem('token'); // Elimina el token del local storage
    setIsAuthenticated(false); // Actualiza el estado de autenticación
    navigate('/'); // Redirige al inicio
};

  return (
    <Box display="flex" justifyContent="space-between" p={2}>
      {/* SEARCH BAR */}
      <Box
        display="flex"
        backgroundColor={colors.primary[400]}
        borderRadius="3px"
      >
        <InputBase sx={{ ml: 2, flex: 1 }} placeholder="Buscar" />
        <IconButton type="button" sx={{ p: 1 }}>
          <SearchIcon />
        </IconButton>
      </Box>

      {/* ICONS */}
      <Box display="flex">
        <IconButton onClick={colorMode.toggleColorMode}>
          {theme.palette.mode === "dark" ? (
            <DarkModeOutlinedIcon />
          ) : (
            <LightModeOutlinedIcon />
          )}
        </IconButton>
        <IconButton>
          <NotificationsOutlinedIcon />
        </IconButton>
        <IconButton onClick={() => navigate('/settings')}>
          <SettingsOutlinedIcon />
        </IconButton>

        {/* Icono de perfil con menú desplegable */}
        <IconButton onClick={handleMenuOpen}>
          <PersonOutlinedIcon />
        </IconButton>
        <Menu
          anchorEl={anchorEl}
          open={isMenuOpen}
          onClose={handleMenuClose}
          anchorOrigin={{
            vertical: 'bottom',
            horizontal: 'right',
          }}
          transformOrigin={{
            vertical: 'top',
            horizontal: 'right',
          }}
        >
          <MenuItem onClick={handleProfileClick} sx={{ '&:hover': { backgroundColor: colors.primary[100] } }}>
            <PersonOutlinedIcon sx={{ mr: 1 }} />
            <Typography variant="body1" >Profile</Typography>
          </MenuItem>
          <MenuItem onClick={handleLogout} sx={{ '&:hover': { backgroundColor: colors.primary[100] } }}>
            <ExitToAppIcon sx={{ mr: 1 }} />
            <Typography variant="body1">Logout</Typography>
          </MenuItem>
        </Menu>
      </Box>
    </Box>
  );
};

export default Topbar
