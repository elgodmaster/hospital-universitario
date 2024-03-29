<fieldset>
	<legend>Nuevo paciente</legend>
	<com:TLabel ForControl="nombre" Text="Nombres"/>
	<com:TTextBox ID="nombre" ValidationGroup="paciente"/>
	<br/>
	<com:TRequiredFieldValidator ControlToValidate="nombre" 
		ErrorMessage="Por favor digite el nombre" Display="Dynamic" ValidationGroup="paciente"/>
	<com:TRegularExpressionValidator ControlToValidate="nombre" ValidationGroup="paciente"
		Display="Dynamic" RegularExpression="\D+" ErrorMessage="Los nombres no contienen números"/>
	<br/>
	<com:TLabel ForControl="apellido" Text="Apellidos"/>
	<com:TTextBox ID="apellido" ValidationGroup="paciente"/>
	<br/>
	<com:TRequiredFieldValidator ControlToValidate="apellido" 
		ErrorMessage="Por favor digite el apellido" Display="Dynamic" ValidationGroup="paciente"/>
	<com:TRegularExpressionValidator ControlToValidate="apellido" ValidationGroup="paciente"
		Display="Dynamic" RegularExpression="\D+" ErrorMessage="Los apellidos no contienen números"/>
	<br/>
	<com:TLabel ForControl="cedula" Text="Cédula"/>
	<com:TTextBox ID="cedula" ValidationGroup="paciente"/>
	<br/>
	<com:TRequiredFieldValidator ControlToValidate="cedula" 
		ErrorMessage="Por favor digite la cédula" Display="Dynamic" ValidationGroup="paciente"/>
	<com:TCustomValidator ControlToValidate="cedula" 
		Display="Dynamic" OnServerValidate="chequearCedula" ErrorMessage="El paciente ya existe." ValidationGroup="paciente"/>
	<com:TRegularExpressionValidator ControlToValidate="cedula" ValidationGroup="paciente"
		Display="Dynamic" RegularExpression="\d{8,10}" ErrorMessage="La cedula es un valor unicamente numerico, de 8 a 10 digitos"/>
	<br/>
	<com:TLabel ForControl="fechaNacimiento" Text="Fecha de nacimiento"/>
	<com:TDatePicker DateFormat="MMMM/dd/yyyy" FromYear="1971" InputMode="DropDownList" ID="fechaNacimiento" ValidationGroup="paciente"/>
	<br/>
	<com:TRequiredFieldValidator ControlToValidate="fechaNacimiento" 
		ErrorMessage="Por favor digite la fecha de nacimiento" Display="Dynamic" ValidationGroup="paciente"/>
	<br/>
	<com:TLabel ForControl="telefono" Text="Teléfono"/>
	<com:TTextBox ID="telefono" ValidationGroup="paciente"/>
	<br/>
	<com:TRegularExpressionValidator ControlToValidate="telefono" ValidationGroup="paciente"
		Display="Dynamic" RegularExpression="\d{7,10}" ErrorMessage="El telefono es un número de 7 a 10 digitos"/>
	<br/>
	<com:TLabel ForControl="direccion" Text="Dirección"/>
	<com:TTextBox ID="direccion" ValidationGroup="paciente"/>
	<br/>
	<br/>
	<com:TButton Text="Crear paciente" OnClick="crearPaciente" ValidationGroup="paciente"/>
</fieldset>
<fieldset>
	<legend>Pacientes del sistema</legend>
	<com:TDataGrid ID="listaPacientes" 
		EnableViewState="false"
		CellPadding="2"
		HeaderStyle.BackColor="black"
		HeaderStyle.ForeColor="white"
		ItemStyle.BackColor="#BFCFFF"
		ItemStyle.Font.Italic="false"
		AlternatingItemStyle.BackColor="#E6ECFF"
	/>
</fieldset>
<!-- 
<fieldset>
	<legend>Usuarios del sistema</legend>
	<com:TDataGrid ID="listaUsuarios" 
		EnableViewState="false"
		CellPadding="2"
		HeaderStyle.BackColor="black"
		HeaderStyle.ForeColor="white"
		ItemStyle.BackColor="#BFCFFF"
		ItemStyle.Font.Italic="false"
		AlternatingItemStyle.BackColor="#E6ECFF"
	/>
</fieldset>
-->
