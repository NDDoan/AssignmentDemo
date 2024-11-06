/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function toggleSidebar() {
    const sidebar = document.getElementById('sidebar');
    const mainContent = document.getElementById('main-content');
    
    if (sidebar.classList.contains('hidden')) {
        sidebar.classList.remove('hidden');
        mainContent.classList.remove('with-sidebar');
    } else {
        sidebar.classList.add('hidden');
        mainContent.classList.add('with-sidebar');
    }
}
