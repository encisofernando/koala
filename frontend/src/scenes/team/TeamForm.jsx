import React, { useEffect, useState } from 'react';
import {
  Dialog,
  DialogTitle,
  DialogContent,
  DialogActions,
  TextField,
  Button,
  FormControl,
  InputLabel,
  Select,
  MenuItem,
  Checkbox,
  FormControlLabel,
  Grid,
  Box,
  Snackbar,
  Alert,
  Typography,
} from '@mui/material';
import { useTheme } from '@mui/material/styles';
import { tokens } from '../../theme'; // Asegúrate de que la ruta sea correcta
import { getAllEmpleados, createEmpleado } from '../../config/EmpleadoDB';
import { getAllTipoDoc } from '../../config/TipoDocDB';
import { getAllCondicionIva } from '../../config/CondicionIVADB';
import { getAllRoles } from '../../config/RolesDB';
import { getAllProvincias } from '../../config/ProvinciaDB';

const initialFormData = {
  Nombre: '', // Cambiado a mayúscula para coincidir con el backend
  Apellido: '',
  NroDoc: '',
  TpDoc: '', // ID del tipo de documento
  idRol: '',
  CUIT: '',
  Tel1: '',
  Email1: '',
  Celular: '',
  Direccion: '',
  CodPostal: '',
  Barrio: '',
  Localidad: '',
  CondIVA: '',
  idProvincia: '', // ID de la provincia
  Provincia: '',
  Rol: '',
  Profesion: '',
  FechaNac: '', // Asegúrate de enviar la fecha en el formato correcto
  FechaIncAct: '',
  FechaBaja: '',
  Activo: false, // Cambiado a mayúscula
  Comentarios: '',
  Password: '',
  confirmPassword: '',
  Imagen: '',
  ImagenUrl: ''
};

const TeamForm = ({ open, onClose, onEmpleadoCreado }) => {
  const theme = useTheme();
  const colors = tokens(theme.palette.mode);
  const [formData, setFormData] = useState(initialFormData);
  const [snackbarOpen, setSnackbarOpen] = useState(false);
  const [snackbarMessage, setSnackbarMessage] = useState('');
  const [snackbarSeverity, setSnackbarSeverity] = useState('success');
  const [empleados, setEmpleados] = useState([]);
  const [tiposDoc, setTiposDoc] = useState([]); // Estado para tipos de documentos
  const [condicionIva, setCondicionIva] = useState([]); // Estado para tipos de documentos
  const [roles, setRoles] = useState([]); // Estado para tipos de documentos
  const [provincias, setProvincias] = useState([]); // Estado para tipos de documentos
  const [image, setImage] = useState(null);
  const [imagePreview, setImagePreview] = useState(null); // Para la vista previa de la imagen


  const handleChange = (e) => {
    const { name, value, type, checked } = e.target;
    setFormData((prevData) => ({
      ...prevData,
      [name]: type === 'checkbox' ? checked : value,
      idRol: name === 'Rol' ? value : prevData.idRol, // Actualiza idRol solo si es el campo Rol
    }));
  };

  useEffect(() => {
    const fetchEmpleados = async () => {
      try {
        const data = await getAllEmpleados();
        setEmpleados(data);
      } catch (error) {
        console.error('Error al obtener los Empleados:', error);
        setSnackbarMessage('Error al obtener Empleados');
        setSnackbarSeverity('error');
        setSnackbarOpen(true);
      }
    };

    const fetchRoles = async () => {
      try {
        const data = await getAllRoles();
        setRoles(data);
      } catch (error) {
        console.error('Error al obtener roles:', error);
      }
    };
    

    const fetchTiposDoc = async () => {
      try {
        const data = await getAllTipoDoc();
        setTiposDoc(data); // Guarda los tipos de documento en el estado
     
        
      } catch (error) {
        console.error('Error al obtener tipos de documento:', error);
        setSnackbarMessage('Error al obtener tipos de documento');
        setSnackbarSeverity('error');
        setSnackbarOpen(true);
      }
    };

    const fetchCondicionIVA = async () => {
      try {
        const data = await getAllCondicionIva();
        setCondicionIva(data); // Guarda los tipos de documento en el estado
   
      } catch (error) {
        console.error('Error al obtener tipos de documento:', error);
        setSnackbarMessage('Error al obtener tipos de documento');
        setSnackbarSeverity('error');
        setSnackbarOpen(true);
      }
    };

    const fetchProvincias = async () => {
      try {
        const data = await getAllProvincias();
        setProvincias(data); // Guarda los tipos de documento en el estado
      } catch (error) {
        console.error('Error al obtener tipos de documento:', error);
        setSnackbarMessage('Error al obtener tipos de documento');
        setSnackbarSeverity('error');
        setSnackbarOpen(true);
      }
    };

    if (open) {
      fetchEmpleados();
      fetchTiposDoc(); // Llama a la función para obtener los tipos de documento
      fetchProvincias();
      fetchCondicionIVA();
      fetchRoles();
      setFormData(initialFormData); // Reinicia el formulario al abrir el diálogo
    }
  }, [open]);

  const handleSubmit = async () => {
    // Validación de las contraseñas
    if (formData.Password !== formData.confirmPassword) {
        setSnackbarMessage('Las contraseñas no coinciden');
        setSnackbarSeverity('error');
        setSnackbarOpen(true);
        return;
    }

    try {
        const formDataToSend = new FormData();
        formDataToSend.append('Nombre', formData.Nombre);
        formDataToSend.append('Apellido', formData.Apellido);
        formDataToSend.append('NroDoc', formData.NroDoc);
        formDataToSend.append('TpDoc', formData.TpDoc);
        formDataToSend.append('idRol', formData.idRol);
        formDataToSend.append('CUIT', formData.CUIT);
        formDataToSend.append('Tel1', formData.Tel1);
        formDataToSend.append('Email1', formData.Email1);
        formDataToSend.append('Celular', formData.Celular);
        formDataToSend.append('Direccion', formData.Direccion);
        formDataToSend.append('CodPostal', formData.CodPostal);
        formDataToSend.append('Barrio', formData.Barrio);
        formDataToSend.append('Localidad', formData.Localidad);
        formDataToSend.append('CondIVA', formData.CondIVA);
        formDataToSend.append('idProvincia', formData.idProvincia);
        formDataToSend.append('Provincia', formData.Provincia);
        formDataToSend.append('Rol', formData.Rol);
        formDataToSend.append('Profesion', formData.Profesion);
        formDataToSend.append('FechaNac', formData.FechaNac);
        formDataToSend.append('FechaIncAct', formData.FechaIncAct);
        formDataToSend.append('FechaBaja', formData.FechaBaja);
        formDataToSend.append('Activo', formData.Activo ? 1 : 0); // Cambiado a 1 o 0
        formDataToSend.append('Comentarios', formData.Comentarios);
        formDataToSend.append('Password', formData.Password);
        

       // Agregar la imagen si existe
       if (image) {
        formDataToSend.append('Imagen', image);
    } else if (formDataToSend.ImagenUrl) {
      formDataToSend.append('Imagen', formDataToSend.ImagenUrl); // La imagen actual ya existente
    }

        const empleadoCreado = await createEmpleado(formDataToSend);
        onEmpleadoCreado(empleadoCreado);
        setSnackbarMessage('Empleado creado exitosamente');
        setSnackbarSeverity('success');
        setSnackbarOpen(true);
        setFormData(initialFormData); // Reinicia el formulario
    } catch (error) {
        console.error('Error al crear el empleado:', error);
        const errorMessage = error.response ? error.response.data.error || 'Error desconocido' : 'Error al conectar con el servidor';
        setSnackbarMessage(errorMessage);
        setSnackbarSeverity('error');
        setSnackbarOpen(true);
    } finally {
        onClose();
    }
};



  


  const handleSnackbarClose = () => {
    setSnackbarOpen(false);
  };

   // Manejar cambio de imagen
   const handleImageChange = (event) => {
    const file = event.target.files[0];
    if (file) {
        setImage(file); // Guarda el objeto de archivo directamente
        setFormData((prevData) => ({
            ...prevData,
            Imagen: file // Actualiza el campo Imagen en formData
        }));
        setImagePreview(URL.createObjectURL(file)); // Genera una URL para la vista previa
    }
};


const handleImageRemove = () => {
  setImage(null);
  setImagePreview(null); // Limpia la vista previa
};
  
  return (
    <>
        <Dialog open={open} onClose={onClose} maxWidth="lg" fullWidth>
          <DialogTitle sx={{ backgroundColor: colors.primary[400], textAlign: "center", fontSize: "1.5rem"}}>Alta de Empleado</DialogTitle>
          <DialogContent sx={{ backgroundColor: colors.primary[400] }}>
          <Box m="10px">
          <Box m="0px 0" p="20px" borderRadius="8px"
            sx={{ backgroundColor: colors.primary[400], "& .MuiFormControl-root": { marginBottom: "20px" },}}>
              <Grid container spacing={2}>
                <Grid item xs={12} sm={6}>
              <FormControl fullWidth margin="normal">
                  <InputLabel>Roles</InputLabel>
                  <Select
                      name="Rol"
                      value={formData.Rol || ''}
                      onChange={(e) => {
                        const selectedRol = roles.find(p => p.Nombre === e.target.value);
                        if (selectedRol) {
                          setFormData((prevData) => ({
                            ...prevData,
                            idRol: selectedRol.idRol,
                            Rol: selectedRol.Nombre,
                          }));
                        }
                      }}
                      fullWidth
                  >
                    {roles.map((rol) => (
                      <MenuItem key={rol.idRol} value={rol.Nombre}>
                        {rol.Nombre} {/* Muestra el nombre de la provincia */}
                      </MenuItem>
                    ))}
                  </Select>
                </FormControl>
              </Grid>
                <Grid item xs={12} sm={3}>
                  <TextField
                    name="Nombre"
                    label="Nombre"
                    fullWidth
                    margin="normal"
                    value={formData.Nombre || ''}
                    onChange={handleChange}
                  />
                
                </Grid>
                <Grid item xs={12} sm={3}>
                  <TextField
                    name="Apellido"
                    label="Apellido"
                    fullWidth
                    margin="normal"
                    value={formData.Apellido || ''}
                    onChange={handleChange}
                  />
                </Grid>
              <Grid item xs={12} sm={3}>
                <FormControl fullWidth margin="normal">
                  <InputLabel>Tipo de Documento</InputLabel>
                  <Select
                    name="TpDoc"
                    value={formData.TpDoc || ''}
                    onChange={handleChange}
                    fullWidth
                  >
                    {tiposDoc.map((tipo) => (
                      <MenuItem key={tipo.idTipoDoc} value={tipo.idTipoDoc}>
                        {tipo.Nombre} {/* Muestra el nombre del tipo de documento */}
                      </MenuItem>
                    ))}
                  </Select>
                </FormControl>
              </Grid>
              <Grid item xs={12} sm={3}>
                <TextField
                  name="NroDoc"
                  label="DNI"
                  fullWidth
                  margin="normal"
                  value={formData.NroDoc || 0}
                  onChange={handleChange}
                />
              </Grid>
              <Grid item xs={12} sm={3}>
                <TextField
                  name="CUIT"
                  label="CUIT"
                  fullWidth
                  margin="normal"
                  value={formData.CUIT || 0}
                  onChange={handleChange}
                />
              </Grid>
              <Grid item xs={12} sm={3}>
              <FormControl fullWidth margin="normal">
                  <InputLabel>Condicion IVA</InputLabel>
                  <Select
                    name="CondIVA"
                    value={formData.CondIVA || ''}
                    onChange={handleChange}
                    fullWidth
                  >
                    {condicionIva.map((condicion) => (
                      <MenuItem key={condicion.idCondIVA} value={condicion.Nombre}>
                        {condicion.Nombre} {/* Muestra el nombre del tipo de documento */}
                      </MenuItem>
                    ))}
                  </Select>
                </FormControl>
              </Grid>
            
              <Grid item xs={12} sm={6}>
                <TextField
                  name="Direccion"
                  label="Dirección"
                  fullWidth
                  margin="normal"
                  value={formData.Direccion || ''}
                  onChange={handleChange}
                />
              </Grid>
              <Grid item xs={12} sm={3}>
                <TextField
                  name="CodPostal"
                  label="Código Postal"
                  fullWidth
                  margin="normal"
                  value={formData.CodPostal || 0}
                  onChange={handleChange}
                />
              </Grid>
              <Grid item xs={12} sm={3}>
                <TextField
                  name="Barrio"
                  label="Barrio"
                  fullWidth
                  margin="normal"
                  value={formData.Barrio || ''}
                  onChange={handleChange}
                />
              </Grid>
              <Grid item xs={12} sm={6}>
                <TextField
                  name="Localidad"
                  label="Localidad"
                  fullWidth
                  margin="normal"
                  value={formData.Localidad || ''}
                  onChange={handleChange}
                />
              </Grid>
              <Grid item xs={12} sm={6}>
                <FormControl fullWidth margin="normal">
                  <InputLabel>Provincia</InputLabel>
                  <Select
                      name="Provincia"
                      value={formData.Provincia || ''}
                      onChange={(e) => {
                        const selectedProvincia = provincias.find(p => p.Nombre === e.target.value);
                        if (selectedProvincia) {
                          setFormData((prevData) => ({
                            ...prevData,
                            idProvincia: selectedProvincia.idProvincia,
                            Provincia: selectedProvincia.Nombre,
                          }));
                        }
                      }}
                      fullWidth
                  >
                    {provincias.map((provincia) => (
                      <MenuItem key={provincia.idProvincia} value={provincia.Nombre}>
                        {provincia.Nombre} {/* Muestra el nombre de la provincia */}
                      </MenuItem>
                    ))}
                  </Select>
                </FormControl>
              </Grid>
              <Grid item xs={12} sm={6}>
                <TextField
                  name="Profesion"
                  label="Profesión"
                  fullWidth
                  margin="normal"
                  value={formData.Profesion || ''}
                  onChange={handleChange}
                />
              </Grid>
              <Grid item xs={12} sm={3}>
                <TextField
                  name="Tel1"
                  label="Teléfono"
                  fullWidth
                  margin="normal"
                  value={formData.Tel1 || 0}
                  onChange={handleChange}
                />
              </Grid>
              <Grid item xs={12} sm={3}>
                <TextField
                  name="Celular"
                  label="Celular"
                  fullWidth
                  margin="normal"
                  value={formData.Celular || 0}
                  onChange={handleChange}
                />
              </Grid>
              <Grid item xs={12} sm={6}>
                <TextField
                  name="Email1"
                  label="Email"
                  fullWidth
                  margin="normal"
                  value={formData.Email1 || ''}
                  onChange={handleChange}
                />
              </Grid>
              <Grid item xs={6} sm={3} >
                <TextField
                  name="Password"
                  label="Contraseña"
                  type="password" // Asegúrate de que el tipo sea 'password'
                  fullWidth
                  margin="normal"
                  value={formData.Password || ''}
                  onChange={handleChange}
                  required // Haz que este campo sea obligatorio si es necesario
                />
              </Grid>

              <Grid item xs={6} sm={3}>
              <TextField
                  name="confirmPassword"
                  label="Confirmar Contraseña"
                  type="password"
                  fullWidth
                  margin="normal"
                  value={formData.confirmPassword}
                  onChange={handleChange}
                />
              </Grid>
              <Grid item xs={12} sm={6}>
                <TextField
                  name="FechaNac"
                  label="Fecha de Nacimiento"
                  type="date"
                  fullWidth
                  margin="normal"
                  value={formData.FechaNac || ''}
                  onChange={handleChange}
                  InputLabelProps={{
                    shrink: true,
                  }}
                />
              </Grid>
              <Grid item xs={12} sm={6}>
                <TextField
                  name="FechaIncAct"
                  label="Fecha de Inicio de Actividad"
                  type="date"
                  fullWidth
                  margin="normal"
                  value={formData.FechaIncAct || ''}
                  onChange={handleChange}
                  InputLabelProps={{
                    shrink: true,
                  }}
                />
              </Grid>
              <Grid item xs={12} sm={6}>
                <TextField
                  name="FechaBaja"
                  label="Fecha de Baja de Actividad"
                  type="date"
                  fullWidth
                  margin="normal"
                  value={formData.FechaBaja || ''}
                  onChange={handleChange}
                  InputLabelProps={{
                    shrink: true,
                  }}
                />
              </Grid>
                 {/* Foto del artículo */}
                 <Grid item xs={12} sm={3} sx={{ mt: 1, marginLeft: "50px" }}>
                <Typography variant="h6">Foto del Empleado</Typography>
                <Box display="flex" alignItems="center">
                  <Button variant="contained" component="label">
                    Buscar Foto
                    <input type="file" name="Imagen"  hidden accept="image/*" onChange={handleImageChange} />
                  </Button>
                  <Button variant="outlined" color="error" onClick={handleImageRemove} sx={{ marginLeft: "10px" }}>
                    Quitar Foto
                  </Button>
                </Box>
                {imagePreview && (
        <Box mt={2}>
            <Typography variant="subtitle1">Vista previa:</Typography>
            <img src={imagePreview} alt="Vista previa" style={{ maxWidth: '50%', maxHeight: '500px' }} />
        </Box>
                )}
              </Grid>
              <Grid item xs={12}>
              <FormControlLabel
                      control={
                        <Checkbox
                          checked={formData.Activo === 1}
                          onChange={(e) =>
                            setFormData({
                              ...formData,
                              Activo: e.target.checked ? 1 : 0,
                            })
                          }
                        />
                      }
                      label="Activo"
                    />
              </Grid>
             

              <Grid item xs={12}>
                <TextField
                  name="Comentarios"
                  label="Comentarios"
                  fullWidth
                  multiline
                  rows={4}
                  margin="normal"
                  value={formData.Comentarios || ''}
                  onChange={handleChange}
                />
              </Grid>
            </Grid>
          </Box>
          </Box>
        </DialogContent>
        <DialogActions sx={{ backgroundColor: colors.primary[400] }}>
          <Button onClick={onClose} color="error">
            Cancelar
          </Button>
          <Button onClick={handleSubmit} color="secondary">
            Crear Empleado
          </Button>
        </DialogActions>
      </Dialog>
      
      <Snackbar open={snackbarOpen} autoHideDuration={6000} onClose={handleSnackbarClose}>
        <Alert onClose={handleSnackbarClose} severity={snackbarSeverity} sx={{ width: '100%' }}>
          {snackbarMessage}
        </Alert>
      </Snackbar>
    </>
  );
};

export default TeamForm;