0x01. 通过Web页面访问虚拟机noVNC<br>

02. 虚拟机配置文件xml中关于鼠标的配置<br>
        `<input type="tablet" bus="usb" />`<br>
解决虚拟机中鼠标不同步的问题<br>

03. 虚拟机配置文件xml中关于VNC的配置<br>
http://libvirt.org/formatdomain.html<br>
        `<!--vnc方式登录，端口号分配为7061，可以通过virsh vncdisplay来查询-->`<br>
        `<graphics type="vnc" port="7061" autoport="no" listen="0.0.0.0" keymap="en-us" sharePolicy='ignore'>`<br>
            `<listen type='address' address='0.0.0.0'/>`<br>
        `</graphics>`<br>
端口号固定为7061<br>

04. `sharePolicy='ignore'`<br>
解决虚拟机只能独享访问的问题，同时可以有多个VNC Client访问虚拟机。<br>

05. 在ubuntu下，使用google chrome自带的开发者工具，对学生上机页面进行编辑，调试。<br>
