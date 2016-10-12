// Copyright (C) 2016 Stanislav Kovalevsky
//
// This file is part of QuantTools.
//
// QuantTools is free software: you can redistribute it and/or modify it
// under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 2 of the License, or
// (at your option) any later version.
//
// QuantTools is distributed in the hope that it will be useful, but
// WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with QuantTools. If not, see <http://www.gnu.org/licenses/>.

#ifndef CANDLE_H
#define CANDLE_H

#include "Tick.h"

class Candle {

public:

  int id;
  double open;
  double high;
  double low;
  double close;
  double time;
  int volume;
  int timeFrame;

  Candle( int timeFrame ) :
  timeFrame( timeFrame )
  {
    if( timeFrame <= 0 ) throw std::invalid_argument( "timeFrame must be greater than 0" );
    time = 0;
  }

  Candle Add( const Tick& tick ) {

    double time = floor( tick.time / timeFrame ) * timeFrame + timeFrame;
    bool startOver = this->time != time;

    if( startOver ) {

      this->time = time;
      id     = tick.id;
      open   = tick.price;
      high   = tick.price;
      low    = tick.price;
      close  = tick.price;
      volume = tick.volume;

      return *this;

    }

    id = tick.id;
    close = tick.price;
    volume += tick.volume;

    if( high < tick.price ) high = tick.price;
    if( low  > tick.price ) low  = tick.price;

    return *this;

  }

};

#endif //CANDLE_H
