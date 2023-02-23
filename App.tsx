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
      <Cube
        infiniteRotation={true}
        x={0.1}
        rotateZ={100}
        height={0.5}
        width={0.1}
      />
    </Scene>
  );
}

export default App;
