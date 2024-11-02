import { useEffect, useState } from "react";
import { ProSidebar, Menu, MenuItem, SubMenu } from "react-pro-sidebar";
import { Box, IconButton, Typography, useTheme } from "@mui/material";
import { Link } from "react-router-dom";
import "react-pro-sidebar/dist/css/styles.css";
import { tokens } from "../../theme";
import HomeOutlinedIcon from "@mui/icons-material/HomeOutlined";
import PeopleOutlinedIcon from "@mui/icons-material/PeopleOutlined";
import ReceiptOutlinedIcon from "@mui/icons-material/ReceiptOutlined";
import MenuOutlinedIcon from "@mui/icons-material/MenuOutlined";
import SignalCellularAltIcon from '@mui/icons-material/SignalCellularAlt';
import AnalyticsIcon from '@mui/icons-material/Analytics';
import InventoryIcon from '@mui/icons-material/Inventory';
import ManageSearchIcon from '@mui/icons-material/ManageSearch';
import AddBusinessIcon from '@mui/icons-material/AddBusiness';
import TuneIcon from '@mui/icons-material/Tune';
import LocalAtmIcon from '@mui/icons-material/LocalAtm';
import { getUserIdFromToken, getIdEmpleadoFromToken } from "../../auth/auth";
import { getUsuarioById } from "../../config/UsuarioDB";
import { getEmpleadoById } from "../../config/EmpleadoDB";
import { getEmpresaById } from "../../config/EmpresaDB";

const Sidebar = () => {
  const theme = useTheme();
  const colors = tokens(theme.palette.mode);
  const [isCollapsed, setIsCollapsed] = useState(false);
  const [selected, setSelected] = useState("Dashboard");
  const [userData, setUserData] = useState(null);
  const [empresa, setEmpresa] = useState(null);

  useEffect(() => {
    const fetchUserData = async () => {
      const userId = getUserIdFromToken();
      const EmpleadoId = getIdEmpleadoFromToken();
      try {
        if (userId) {
          const response = await getUsuarioById(userId);
          setUserData(response);
          if (response.idEmpresa) {
            const empresaResponse = await getEmpresaById(response.idEmpresa);
            setEmpresa(empresaResponse);
          }
        } else if (EmpleadoId) {
          const response = await getEmpleadoById(EmpleadoId);
          setUserData(response);
          if (response.idEmpresa) {
            const empresaResponse = await getEmpresaById(response.idEmpresa);
            setEmpresa(empresaResponse);
          }
        } else {
          console.warn("No se encontró ID de usuario ni ID de empleado en el token.");
        }
      } catch (error) {
        console.error("Error fetching user/employee data:", error);
      }
    };
    fetchUserData();
  }, []);

  return (
<Box
  sx={{
    "& .pro-sidebar-inner": {
      background: `${colors.primary[700]} !important`,
      borderRadius: "8px",
      boxShadow: "0 4px 8px rgba(255, 0, 0, 0.2)",
    },
    "& .pro-icon-wrapper": {
      backgroundColor: "transparent !important",
    },
    "& .pro-inner-item": {
      padding: "10px 20px !important",
      color: `${colors.grey[100]}`,
      fontSize: "16px",
    },
    "& .pro-inner-item:hover": {
      color: "#ffffff !important",
      backgroundColor: `${colors.primary[600]} !important`,
      borderRadius: "8px",
    },
    "& .pro-menu-item.active": {
      color: "#ffffff !important",
      backgroundColor: `${colors.primary[700]} !important`,
      borderRadius: "8px",
    },
    // Estilo para los elementos del submenú
    "& .pro-sub-menu .pro-inner-item": {
      backgroundColor: "#0C101B !important", // Cambia el color de fondo aquí
      color: `${colors.grey[100]} !important`, // Color del texto
      padding: "10px 20px !important", // Asegúrate de que el padding sea el mismo que en los elementos de menú
    },
    "& .pro-sidebar .pro-menu > ul > .pro-sub-menu > .pro-inner-list-item": {
      backgroundColor: "#0C101B !important", // Cambia el color de fondo aquí
    },
    "& .pro-sub-menu .pro-inner-item:hover": {
      backgroundColor: `${colors.primary[600]} !important`, // Color de fondo al pasar el mouse en el submenú
      color: "#ffffff !important", // Color del texto al pasar el mouse
    },
    "& .pro-sub-menu .pro-inner-item.active": {
      backgroundColor: `${colors.primary[600]} !important`, // Color de fondo activo en el submenú
      color: "#ffffff !important", // Color del texto activo en el submenú
    },
  }}
>

  
      <ProSidebar collapsed={isCollapsed}>
        <Menu iconShape="square">
          <MenuItem
            onClick={() => setIsCollapsed(!isCollapsed)}
            icon={isCollapsed ? <MenuOutlinedIcon /> : undefined}
            style={{ color: colors.grey[100], transition: "all 0.3s ease-in-out" }}
          >
            {!isCollapsed && (
              <Box display="flex" alignItems="center" ml="15px">
                <Typography variant="h3" color={colors.grey[100]}>
                  {empresa ? empresa.NomComercial : "Cargando empresa..."}
                </Typography>
                <IconButton onClick={() => setIsCollapsed(!isCollapsed)}>
                  <MenuOutlinedIcon />
                </IconButton>
              </Box>
            )}
          </MenuItem>

          <MenuItem icon={<HomeOutlinedIcon />} style={{ color: colors.grey[100] }}><Link to={'/dashboard'}>Panel General</Link></MenuItem>

          {/* Menú de Ventas */}
          <SubMenu title="Ventas" icon={<ReceiptOutlinedIcon />} style={{ color: colors.grey[100] }}>
            <MenuItem><Link to={'/facturacion'}> Nueva Venta (F12 o Ctrl+N) </Link></MenuItem>
            <MenuItem> Buscar Comprobante (Ctrl+B) </MenuItem>
            <MenuItem> Anular Comprobante </MenuItem>
            <MenuItem> Comprobante Asociado </MenuItem>
            <MenuItem> Reimprimir Comprobante </MenuItem>
          </SubMenu>

          {/* Menú de Caja */}
          <SubMenu title="Caja" icon={<LocalAtmIcon />}>
            <SubMenu title="Extracciones e Ingresos">
              <MenuItem> Extracción de Caja </MenuItem>
              <MenuItem> Ingreso de Caja </MenuItem>
              <MenuItem> Ver Extracciones e Ingresos </MenuItem>
            </SubMenu>
            <MenuItem> Apertura de Caja </MenuItem>
            <MenuItem> Cierre de Caja </MenuItem>
            <MenuItem> Ver Cajas Cerradas </MenuItem>
          </SubMenu>

          {/* Menú de Clientes */}
          <SubMenu title="Clientes" icon={<PeopleOutlinedIcon />}>
            <MenuItem><Link to={'/clientes'}>Lista de Clientes</Link></MenuItem>
            <MenuItem> Clientes de Cuentas Corrientes (Ctrl+K) </MenuItem>
            <MenuItem> Alta de Cliente (Ctrl+E) </MenuItem>
          </SubMenu>

          {/* Menú de Proveedores */}
          <SubMenu icon={<AddBusinessIcon />} title="Proveedores">
            <MenuItem> Alta de Entrada de Mercadería </MenuItem>
            <MenuItem> Buscar Entrada de Mercadería </MenuItem>
          </SubMenu>

          {/* Menú de Estadísticas */}
          <SubMenu icon={<SignalCellularAltIcon/>} title="Estadísticas">
            <MenuItem> Ventas por Usuarios </MenuItem>
            <MenuItem> Artículos Vendidos </MenuItem>
          </SubMenu>

          {/* Menú de Reportes/Listados */}
          <SubMenu icon={<AnalyticsIcon/>} title="Reportes/Listados">
            <SubMenu icon={<AnalyticsIcon/>}  title="Precio">
              <MenuItem icon={<AnalyticsIcon/>} >   Precio General </MenuItem>
              <MenuItem> Precio por Categoría </MenuItem>
            </SubMenu>
            <SubMenu title="Ventas">
              <MenuItem> Venta Detallada </MenuItem>
              <MenuItem> Ventas por Categoría </MenuItem>
              <MenuItem> Ventas Diarias </MenuItem>
              <MenuItem> Ventas Mensuales </MenuItem>
              <MenuItem> Ventas por Vendedor </MenuItem>
              <MenuItem> Costos/Ganancias </MenuItem>
            </SubMenu>
            <SubMenu title="Compras">
              <MenuItem> Compras por Proveedor </MenuItem>
            </SubMenu>
            <SubMenu title="Fiscales">
              <MenuItem> Libro de IVA Ventas </MenuItem>
              <MenuItem> Libro de IVA Compras </MenuItem>
              <MenuItem> Ventas por Jurisdicción </MenuItem>
            </SubMenu>
            <MenuItem> Artículos a Reponer Stock </MenuItem>
            <SubMenu title="Artículos">
              <MenuItem> Por Categoría </MenuItem>
              <MenuItem> Por Proveedor </MenuItem>
              <MenuItem> A Vencer </MenuItem>
              <MenuItem> Inventario General </MenuItem>
              <MenuItem> Inventario por Costo </MenuItem>
            </SubMenu>
            <SubMenu title="Clientes">
              <MenuItem> Clientes </MenuItem>
              <MenuItem> Cuentas Corrientes </MenuItem>
              <MenuItem> Cuentas Corrientes por Vencer </MenuItem>
            </SubMenu>
          </SubMenu>

          {/* Menú de Artículos */}
          <SubMenu  icon={<InventoryIcon/>} title="Artículos">
            <MenuItem> Consulta de Precios (F9) </MenuItem>
            <MenuItem> Buscar Artículos (Ctrl + S) </MenuItem>
            <MenuItem> Alta de Artículos (Ctrl + A) </MenuItem>
            <MenuItem> Promociones </MenuItem>
            <MenuItem> Actualización Masiva de Precios </MenuItem>
            <MenuItem> Impresión de Código de Barras </MenuItem>
          </SubMenu>

          {/* Menú de Operaciones */}
          <SubMenu icon={<ManageSearchIcon/>} title="Operaciones">
            <SubMenu title="Factura Electrónica">
              <MenuItem> Reproceso de Factura Electrónica </MenuItem>
            </SubMenu>
            <MenuItem> Régimen de Información de Ventas RG3685 </MenuItem>
            <MenuItem> Actualizar Cotización Dólar </MenuItem>
          </SubMenu>

          {/* Menú de Administración */}
          <SubMenu icon={<TuneIcon/>} title="Administración">
            <MenuItem> Categorías </MenuItem>
            <MenuItem> Proveedores </MenuItem>
            <MenuItem> Usuarios </MenuItem>
            <MenuItem> Tarjetas </MenuItem>
            <MenuItem> Descuentos </MenuItem>
            <MenuItem> Tipos de Mov. de Caja </MenuItem>
            <SubMenu title="Importación de Datos (Excel)">
              <MenuItem> Artículos CSV </MenuItem>
              <MenuItem> Clientes CSV </MenuItem>
              <MenuItem> Categorías CSV </MenuItem>
            </SubMenu>
            <SubMenu title="Exportación de Datos (Excel)">
              <MenuItem> Artículos CSV </MenuItem>
            </SubMenu>
            <SubMenu title="Configuración del Sistema">
              <MenuItem><Link to={'/settings'}>Empresa</Link></MenuItem>
              <MenuItem> Comprobantes </MenuItem>
              <MenuItem> Impresoras </MenuItem>
              <MenuItem> Cuenta de Correo </MenuItem> 
              <MenuItem> Cajas </MenuItem>
              <MenuItem> Canales de Venta </MenuItem>
              <MenuItem> Código de Barras de Balanza </MenuItem>
              <MenuItem> Configuración General </MenuItem>
              <MenuItem> AFIP Factura Electrónica </MenuItem>
              <MenuItem> Generar CSR </MenuItem>
              <MenuItem> Integración con Mercado Libre </MenuItem>
            </SubMenu>
          </SubMenu>
        </Menu>
      </ProSidebar>
    </Box>
  );
};

export default Sidebar;
