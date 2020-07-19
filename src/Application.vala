/*
* Copyright (c) 2020 davidj.org (https://davidj.davidj.org)
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public License 
* as publicshed by the Free Software Foundation; either version
* 2 of the license, or (at your option) any later version.
* 
* This program is distributed in the hope that it will be useful,
* but without any warranty; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
* 
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software Foundation,
* Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
*
* Authored by: David Johnson <github@davidj.org>
*/

public class myApp : Gtk.Application {
    public myApp() {
        Object (
            application_id: "com.github.davidjdotorg.hello-again",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

   protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title="Hello World"
        };
        
        var label = new Gtk.Label ("Hello Again World:");
        
        main_window.add (label);
        
        main_window.show_all ();
    }
    
    public static int main (string[] args) {
        return new myApp ().run (args);
    }
}
