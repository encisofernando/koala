import { Box, Typography, Button } from "@mui/material";
import { DataGrid, GridToolbar } from "@mui/x-data-grid";
import { tokens } from "../../theme";
import Header from "../../components/Header";
import { useTheme } from "@mui/material";
import { useEffect, useState } from "react"; // Importar useEffect y useState
import { deleteEmpleado, getAllEmpleados, getEmpleadoById } from "../../config/EmpleadoDB"; // Asegúrate de que la ruta sea correcta
import TeamForm from "./TeamForm"; // Asegúrate de que la ruta sea correcta
import VisibilityIcon from "@mui/icons-material/Visibility";
import EditIcon from "@mui/icons-material/Edit"; // Importa el ícono de editar
import DeleteIcon from "@mui/icons-material/Delete"; // Importa el ícono de eliminar
import AdminPanelSettingsIcon from '@mui/icons-material/AdminPanelSettings';
import RequestPageIcon from '@mui/icons-material/RequestPage';
import ManageAccountsIcon from '@mui/icons-material/ManageAccounts';
import PersonIcon from '@mui/icons-material/Person';
import Ficha from './Ficha'; // Asegúrate de que la ruta sea correcta
import TeamFormEditar from "./TeamFormEditar";
import Permisos from "./Permisos";

const Empleados = () => {
  const theme = useTheme();
  const colors = tokens(theme.palette.mode);
  const [openDialog, setOpenDialog] = useState(false); // Estado para manejar el diálogo
  const [openFichaEmpleado, setOpenFichaEmpleado] = useState(false);
  const [empleadoSeleccionado, setEmpleadoSeleccionado] = useState(null);
  const [rows, setRows] = useState([]);
  const [openCrear, setOpenCrear] = useState(false);
  const [openEditar, setOpenEditar] = useState(false);
  const [empleadoEditando, setEmpleadoEditando] = useState(null);
  const [openPermisosDialog, setOpenPermisosDialog] = useState(false); // Estado para el diálogo de permisos


  const roleMapping = {
    1: { name: "Admin", icon: <AdminPanelSettingsIcon />, color: colors.greenAccent[600] }, // Verde
    2: { name: "Manager", icon: <ManageAccountsIcon />, color: colors.orange[500] }, // Naranja
    3: { name: "Contador", icon: <RequestPageIcon />, color: colors.yellow[500] }, // Amarillo
    4: { name: "User", icon: <PersonIcon />, color: colors.blueAccent[500] }, // Azul
  };  

  const columns = [

    { field: "CUIT", headerName: "CUIT" },
    {
      field: "ApellidoYNombre",
      headerName: "Apellido y Nombre",
      flex: 1,
      cellClassName: "name-column--cell",
      renderCell: (params) => (
        <span>
          {params.row.Nombre} {params.row.Apellido}
        </span>
      ),
    },
    {
      field: "Celular",
      headerName: "Número de Teléfono",
      flex: 1,
    },
    {
      field: "Email1",
      headerName: "Correo Electrónico",
      flex: 1,
    },
    {
      field: "idRol",
      headerName: "Nivel de Acceso",
      flex: 1,
      renderCell: ({ row: { idRol } }) => {
        const role = roleMapping[idRol] || { name: "Desconocido", icon: null, color: colors.grey[500] };
    
        return (
          <Box
            width="60%"
            m="0 auto"
            p="5px"
            display="flex"
            justifyContent="center"
            backgroundColor={role.color}
            borderRadius="4px"
          >
            {role.icon}
            <Typography color="black" sx={{ ml: "5px" }}>
              {role.name}
            </Typography>
          </Box>
        );
      },
    },
    
    {
      field: "acciones",
      headerName: "Acciones",
      flex: 1,
      renderCell: (params) => (
        <>
          <Button
            onClick={() => {
              handleEmpleadoSeleccionado(params.row); // Establecer el empleado seleccionado
              setOpenFichaEmpleado(true); // Abrir el diálogo
            }}
            variant="contained"
            color="info"
            sx={{ mr: 1 }}
            startIcon={<VisibilityIcon />}
          >
            Ver Ficha
          </Button>
          <Button
            variant="contained"
            color="secondary"
            sx={{ mr: 1, display: 'flex', justifyContent: 'center', alignItems: 'center', minWidth: 48 }}
            onClick={() => handleOpenEditar(params.row)}
          >
            <EditIcon />
          </Button>
          <Button
            variant="contained"
            color="error"
            sx={{ display: 'flex', justifyContent: 'center', alignItems: 'center', minWidth: 48 }}
            onClick={() => handleDelete(params.row.idEmpleado)}
          >
            <DeleteIcon/>
          </Button>
        </>
      ),
    }
    
  ];

  const handleSavePermissions = (permissions) => {
    // Aquí manejas la lógica para guardar los permisos en la base de datos
    console.log('Permisos guardados:', permissions);
  };

  const handleCloseCrear = () => setOpenCrear(false);

  const fetchEmpleados = async () => {
    try {
     
      const empleados = await getAllEmpleados(); // Pasar idBase a tu función

      const rowsWithIds = empleados.map(empleado => ({
        ...empleado,
        id: empleado.idEmpleado
      })).filter(empleado => empleado.id !== null);

      setRows(rowsWithIds);
    } catch (error) {
      console.error('Error al obtener artículos:', error);
    }
  };

 

  const handleOpenEditar = async (empleado) => {
    try {
      const empleadoCompleto = await getEmpleadoById(empleado.idEmpleado);
      setEmpleadoEditando(empleadoCompleto);
      setOpenEditar(true);
    } catch (error) {
      console.error('Error al obtener los datos del artículo:', error);
      alert('Hubo un error al cargar los datos del artículo');
    }
  };

  const handleCloseEditar = () => {
    setEmpleadoEditando(null);
    setOpenEditar(false);
  };

  const handleDelete = async (id) => {
    if (window.confirm("¿Estás seguro de que deseas eliminar este artículo?")) {
      try {
        await deleteEmpleado(id);
        setRows((prevRows) => prevRows.filter(row => row.idEmpleado !== id));
        alert('Artículo eliminado con éxito');
      } catch (error) {
        console.error('Error al eliminar artículo:', error);
        alert('Error al eliminar el artículo');
      }
    }
  };

  useEffect(() => {
    fetchEmpleados();
  }, []);

  
  const handleEmpleadoSeleccionado = (cliente) => {
    setEmpleadoSeleccionado(cliente);
};

  const handleEmpleadoCreado = () => {
    fetchEmpleados();
    handleCloseCrear();
  };

  const handleEmpleadoEditado = () => {
    fetchEmpleados();
    handleCloseEditar();
  };

  return (
    <Box m="20px">
    <Box display="flex" justifyContent="space-between" alignItems="center" mb="20px">
      <Header title="EMPLEADOS" subtitle="Lista de Empleados" />
      <Box display="flex" alignItems="center">
        <Button
          variant="contained"
          color="secondary"
          onClick={() => setOpenPermisosDialog(true)}
          sx={{ mr: 1 }} // Margen derecho para separar los botones
        >
          Permisos
        </Button>
        <Button
          variant="contained"
          color="primary"
          onClick={() => setOpenDialog(true)}
        >
          Alta de Empleado
        </Button>
      </Box>
    </Box>
      <Box
        m="40px 0 0 0"
        height="75vh"
        sx={{
          "& .MuiDataGrid-root": {
            border: "none",
          },
          "& .MuiDataGrid-cell": {
            borderBottom: "none",
          },
          "& .name-column--cell": {
            color: colors.greenAccent[300],
          },
          "& .MuiDataGrid-columnHeaders": {
            backgroundColor: colors.blueAccent[700],
            borderBottom: "none",
          },
          "& .MuiDataGrid-virtualScroller": {
            backgroundColor: colors.primary[400],
          },
          "& .MuiDataGrid-footerContainer": {
            borderTop: "none",
            backgroundColor: colors.blueAccent[700],
          },
          "& .MuiCheckbox-root": {
            color: `${colors.greenAccent[200]} !important`,
          },
          "& .MuiDataGrid-toolbarContainer .MuiButton-text": {
            color: `${colors.grey[100]} !important`,
          },
        }}
      >
      <DataGrid
            rows={rows}

  getRowId={(row) => row.idEmpleado} // Asegúrate de que idCliente sea el ID único
  columns={columns}
  components={{ Toolbar: GridToolbar }}
/>
      </Box>
      <TeamForm open={openDialog} onClose={() => setOpenDialog(false)} onEmpleadoCreado={handleEmpleadoCreado} />
      <TeamFormEditar open={openEditar} onClose={handleCloseEditar} empleadoEditando={empleadoEditando} onEmpleadoEditando={handleEmpleadoEditado} />
      <Ficha
                openFichaEmpleado={openFichaEmpleado}
                setOpenFichaEmpleado={setOpenFichaEmpleado}
                empleado={empleadoSeleccionado}
            />


              {/* Diálogo de Permisos */}
      <Permisos
        open={openPermisosDialog} 
        onClose={() => setOpenPermisosDialog(false)} 
        empleados={rows} 
        onSave={handleSavePermissions} 
      />
    </Box>
  );
};

export default Empleados;
