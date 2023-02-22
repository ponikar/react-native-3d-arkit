/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import React from 'react';
import {Camera, Cube, Scene} from './js/AR';

function App(): JSX.Element {
  return (
    <Scene style={{flex: 1}}>
      <Camera style={{flex: 1}} />
      <Cube style={{flex: 1}} />
    </Scene>
  );
}

export default App;
