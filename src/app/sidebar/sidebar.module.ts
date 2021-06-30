import {NgModule} from '@angular/core';
import {CommonModule} from '@angular/common';
import {ContactsComponent} from './components/contacts/contacts.component';
import {SkillsComponent} from './components/skills/skills.component';
import {AboutMeComponent} from './components/about-me/about-me.component';
import {MainComponent} from './components/main/main.component';
import {ViewComponent} from './components/view/view.component';
import {MatDividerModule} from "@angular/material/divider";
import {MatButtonModule} from "@angular/material/button";
import {MatIconModule} from "@angular/material/icon";

@NgModule({
  declarations: [
    ContactsComponent,
    SkillsComponent,
    AboutMeComponent,
    MainComponent,
    ViewComponent
  ],
  imports: [
    CommonModule,
    MatDividerModule,
    MatButtonModule,
    MatIconModule,
  ],
  exports: [
    ViewComponent,
  ],
})

export class SidebarModule {
}
