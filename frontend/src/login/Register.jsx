import React, { useState } from 'react';
import {
  Container,
  Box,
  TextField,
  Button,
  Typography,
  Link
} from '@mui/material';
import GoogleIcon from '@mui/icons-material/Google';
import { useNavigate } from 'react-router-dom';
import { registerUsuario } from '../config/UsuarioDB'; // Asegúrate de usar la ruta correcta

const Register = ( ) => {
    const [Email, setEmail] = useState('');
    const [Password, setPassword] = useState('');
    const [confirmPassword, setConfirmPassword] = useState('');
    const navigate = useNavigate();

    // Función para manejar el envío del formulario de registro
    const handleSubmit = async (e) => {
      e.preventDefault();

      // Verificar si las contraseñas coinciden
      if (Password !== confirmPassword) {
        alert('Las contraseñas no coinciden');
        return;
      }

      // Crear un nuevo usuario con idRol como '1'
      const nuevoUsuario = {
        Email,
        Password,
        idRol: '1', // Asignar idRol como '1'
      };

      try {
        // Llamar a la función de registro
        await registerUsuario(nuevoUsuario);
        
        // Si el registro es exitoso, puedes autenticar al usuario
      
        
        // Redirigir a la página de inicio o donde necesites
        navigate('/');
      } catch (error) {
        alert('Error al registrar el usuario: ' + error.message);
      }
    };

  return (
    <Box
      sx={{
        minHeight: '100vh',
        background: 'linear-gradient(135deg, #0f1327, #2e3844, #143f52)',
        display: 'flex',
        justifyContent: 'center',
        alignItems: 'center',
        padding: '20px',
      }}
    >
      <Container component="main" maxWidth="xs">
        <Box
          sx={{
            display: 'flex',
            flexDirection: 'column',
            alignItems: 'center',
            backgroundColor: 'rgba(6, 21, 41, 0.945)',
            backdropFilter: 'blur(10px)',
            padding: '40px 30px',
            borderRadius: '15px',
            boxShadow: '0 8px 30px rgb(0, 0, 0)',
            width: '100%',
            transition: 'all 0.3s ease-in-out',
            '&:hover': {
              transform: 'scale(1.02)',
            },
          }}
        >
          <Typography
            component="h1"
            variant="h5"
            sx={{
              color: '#fff',
              fontWeight: 'bold',
              fontSize: '1.8rem',
              letterSpacing: '0.05em',
            }}
          >
            Sign Up
          </Typography>
          <Box component="form" noValidate sx={{ mt: 2, width: '100%' }} onSubmit={handleSubmit}>
            <TextField
              margin="normal"
              required
              fullWidth
              id="email"
              label="Email Address"
              name="email"
              autoComplete="email"
              autoFocus
              InputLabelProps={{
                style: { color: '#fff' },
                shrink: true,
              }}
              value={Email}
              onChange={(e) => setEmail(e.target.value)}
              InputProps={{
                style: {
                  fontSize: '0.875rem',
                },
              }}
              placeholder="email@gmail.com"
              sx={{
                input: { color: '#fff' },
                borderRadius: '30px',
                fieldset: { borderColor: 'rgba(255, 255, 255, 0.5)' },
                '&:hover fieldset': { borderColor: '#fff' },
                '&.Mui-focused fieldset': { borderColor: '#1976d2' },
              }}
            />
            <TextField
              margin="normal"
              required
              fullWidth
              name="password"
              label="Password"
              type="password"
              id="password"
              autoComplete="current-password"
              InputLabelProps={{
                style: { color: '#fff' },
                shrink: true,
              }}
              value={Password}
              onChange={(e) => setPassword(e.target.value)}
              placeholder="*******"
              sx={{
                input: { color: '#fff' },
                borderRadius: '30px',
                fieldset: { borderColor: 'rgba(255, 255, 255, 0.5)' },
                '&:hover fieldset': { borderColor: '#fff' },
                '&.Mui-focused fieldset': { borderColor: '#1976d2' },
              }}
            />
            <TextField
              margin="normal"
              required
              fullWidth
              name="confirmPassword"
              label="Confirm Password"
              type="password"
              id="confirmPassword"
              autoComplete="confirm-password"
              InputLabelProps={{
                style: { color: '#fff' },
                shrink: true,
              }}
              value={confirmPassword}
              onChange={(e) => setConfirmPassword(e.target.value)}
              placeholder="*******"
              sx={{
                input: { color: '#fff' },
                borderRadius: '30px',
                fieldset: { borderColor: 'rgba(255, 255, 255, 0.5)' },
                '&:hover fieldset': { borderColor: '#fff' },
                '&.Mui-focused fieldset': { borderColor: '#1976d2' },
              }}
            />

            <Button
              type="submit"
              fullWidth
              variant="contained"
              sx={{
                mt: 3,
                color: '#000',
                backgroundColor: '#ffffff',
                padding: '6px 0',
                fontSize: '13px',
                fontWeight: 'bold',
                borderRadius: '30px',
                transition: 'background-color 0.3s ease',
                '&:hover': {
                  backgroundColor: '#e2dbdb',
                  transform: 'translateY(-2px)',
                  boxShadow: '0 4px 15px rgba(0, 0, 0, 0.2)',
                },
              }}
            >
              Sign Up
            </Button>
            <Link
              href="/"
              variant="body2"
              sx={{
                color: '#ffffff',
                fontSize: '0.9rem',
                mt: 2,
                display: 'block',
                textAlign: 'center',
              }}
            >
              Already have an account? Sign in
            </Link>
          </Box>
          <Typography
            variant="body1"
            sx={{
              color: '#fff',
              mt: 3,
              mb: 2,
              textAlign: 'center',
              fontSize: '1rem',
              letterSpacing: '0.05em',
            }}
          >
            or
          </Typography>
          <Button
            fullWidth
            variant="contained"
            sx={{
              mb: 2,
              backgroundColor: '#ffffff',
              color: '#000000',
              padding: '10px 0',
              fontSize: '0.8rem',
              fontWeight: 'bold',
              borderRadius: '30px',
              transition: 'background-color 0.3s ease',
              '&:hover': {
                backgroundColor: '#d3d3d3',
                transform: 'translateY(-2px)',
                boxShadow: '0 4px 15px rgb(192, 185, 185)',
              },
            }}
            startIcon={<GoogleIcon />}
          >
            Sign up with Google
          </Button>
        </Box>
      </Container>
    </Box>
  );
};

export default Register;
