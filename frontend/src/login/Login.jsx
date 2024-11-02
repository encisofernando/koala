import React, { useState, useEffect } from 'react';
import {
  Container,
  Box,
  TextField,
  Button,
  Typography,
  Checkbox,
  FormControlLabel,
  Link
} from '@mui/material';
import GoogleIcon from '@mui/icons-material/Google';
import { useNavigate } from 'react-router-dom';
import { login } from '../config/UsuarioDB'; // Asegúrate de que la ruta sea correcta

const Login = ({ setIsAuthenticated }) => {
    const [Email, setEmail] = useState('');
    const [Password, setPassword] = useState('');
    const [errorMessage, setErrorMessage] = useState('');
    const navigate = useNavigate();

    // Verifica si hay un token en el local storage al cargar el componente
    useEffect(() => {
        const token = localStorage.getItem('token');
        if (token) {
            navigate('/dashboard'); // Redirigir al dashboard si hay un token
        }
    }, [navigate]);

    const handleSubmit = async (e) => {
      e.preventDefault();
  
      try {
          const credenciales = { Email, Password };
          const response = await login(credenciales); // Llama a la función de login
          console.log('Respuesta del login:', response); // Muestra la respuesta

          if (response && response.token) {
              localStorage.setItem('token', response.token); // Guarda el token en el local storage
              localStorage.setItem('idBase', response.idBase); // Guarda el idBase
              setIsAuthenticated(true); // Autentica al usuario
              navigate('/dashboard'); // Redirigir al dashboard
          }
      } catch (error) {
          setErrorMessage('Usuario o contraseña incorrectos'); // Maneja el error y muestra mensaje
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
                Sign In
              </Typography>
              {errorMessage && ( // Muestra el mensaje de error si existe
                <Typography color="error" sx={{ mt: 2 }}>
                  {errorMessage}
                </Typography>
              )}
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
                <Link
                  href="#"
                  variant="body2"
                  sx={{ color: '#fff', fontSize: '0.9rem', mt: 1, display: 'block', textAlign: 'right' }}
                >
                  Forgot your password?
                </Link>
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
                <FormControlLabel
                  control={
                    <Checkbox
                      value="remember"
                      color="primary"
                      sx={{
                        transform: 'scale(1.0)',
                        color: '#fff'
                      }}
                    />
                  }
                  label={<span style={{ fontSize: '0.85rem' }}>Remember me</span>}
                  sx={{ color: '#fff', mt: 2 }}
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
                  Sign In
                </Button>
                <Link
                  href="/register"
                  variant="body2"
                  sx={{
                    color: '#ffffff',
                    fontSize: '0.9rem',
                    mt: 2,
                    display: 'block',
                    textAlign: 'center',
                  }}
                >
                  Don’t have an account? Sign up
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
                Sign in with Google
              </Button>
            </Box>
          </Container>
        </Box>
    );
};

export default Login;
