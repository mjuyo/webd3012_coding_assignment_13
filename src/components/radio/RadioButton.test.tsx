import React from 'react';
import { render, screen } from '@testing-library/react';
import RadioButton from './RadioButton';

test('renders RadioButton component', () => {
  render(<RadioButton label="Radio Button" name="radio" />);
  expect(screen.getByLabelText('Radio Button')).toBeVisible();
});

test('RadioButton is disabled', () => {
  render(<RadioButton label="Radio Button" name="radio" disabled />);
  const radioButton = screen.getByLabelText('Radio Button');
  expect(radioButton).toBeDisabled();
  const labelElement = screen.getByText('Radio Button');
  expect(labelElement).toBeInTheDocument();
  expect(labelElement).toHaveStyle('cursor: not-allowed');
  expect(labelElement).toHaveStyle('opacity: 0.5');
});
