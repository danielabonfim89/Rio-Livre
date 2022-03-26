unit UnitColetor;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit, FMX.ListBox;

type
  TFrmColetor = class(TForm)
    LytToolbar: TLayout;
    LblTitle: TLabel;
    ImgBack: TImage;
    ImgCart: TImage;
    LytSearch: TLayout;
    RecSearch: TRectangle;
    EdtSearch: TEdit;
    Image3: TImage;
    BtnSearch: TButton;
    LytEndereco: TLayout;
    LblEndereco: TLabel;
    Image4: TImage;
    Image5: TImage;
    LblQtdeMin: TLabel;
    LblHour: TLabel;
    LbCategoria: TListBox;
    ListBoxItem1: TListBoxItem;
    Rectangle1: TRectangle;
    Label1: TLabel;
    ListBoxItem2: TListBoxItem;
    Rectangle2: TRectangle;
    Label2: TLabel;
    ListBoxItem3: TListBoxItem;
    Rectangle3: TRectangle;
    Label3: TLabel;
    LbRecipientes: TListBox;
    procedure FormShow(Sender: TObject);
  private
    procedure AddRecipiente(id_recipiente: integer; descricao,
      quantidade: string);
    procedure ListarRecipientes;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmColetor: TFrmColetor;

implementation

{$R *.fmx}

uses UnitPrincipal, Frame_RecipienteCard;

procedure TFrmColetor.AddRecipiente(id_recipiente: integer;
                                    descricao, quantidade: string);
var
  item: TListBoxItem;
  frame: TFrameRecipienteCard;
begin
    //Instanciando o item da ListBox
    item:= TListBoxItem.Create(LbRecipientes);
    //Para n�o ficar com o fundo cinza quando o usu�rio tocar
    item.Selectable:= false;
    //Texto vazio para ser carregado a partir do frame
    item.Text:= '';
    //Altura do Frame
    item.Height:= 200;
    //Deixar salvo dentro da tag do item o id do recipiente
    item.Tag:= id_recipiente;

    //Instanciando o Frame...
    frame:= TFrameRecipienteCard.Create(item);
    //frame.imgFoto.bitmap:=
    frame.lblNomeRecipiente.Text:= descricao;
    frame.lblQtdeRecipiente.text:= quantidade;

    //Inserindo o Frame dentro do Item...
    item.AddObject(frame);

    //Instanciando o item
    LbRecipientes.AddObject(item);
end;

procedure TFrmColetor.ListarRecipientes;
begin
    //Acessar os dados no backend...
    AddRecipiente(0, 'Garrafa Pet', '2L');
    AddRecipiente(0, 'Garrafa Pet', '2L');
    AddRecipiente(0, 'Garrafa Pet', '2L');
    AddRecipiente(0, 'Garrafa Pet', '2L');
    AddRecipiente(0, 'Garrafa Pet', '2L');
end;

procedure TFrmColetor.FormShow(Sender: TObject);
begin
    ListarRecipientes;
end;

end.