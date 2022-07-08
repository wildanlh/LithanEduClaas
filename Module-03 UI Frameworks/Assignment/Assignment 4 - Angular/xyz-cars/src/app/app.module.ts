import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { WelcomeComponent } from './welcome/welcome.component';
import { CarDetailComponent } from './car-detail/car-detail.component';
import { CarOnSaleComponent } from './car-on-sale/car-on-sale.component';

@NgModule({
  declarations: [
    AppComponent,
    WelcomeComponent,
    CarDetailComponent,
    CarOnSaleComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
