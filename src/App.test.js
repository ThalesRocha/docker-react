import { render, screen } from '@testing-library/react';
import App from './App';

test('renders text link', () => {
  render(<App />);
  const linkElement = screen.getByText(/I was changed on the Feature branch/i);
  expect(linkElement).toBeInTheDocument();
});