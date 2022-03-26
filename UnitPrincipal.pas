unit UnitPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView;

type
  TFrmPrincipal = class(TForm)
    LytToolbar: TLayout;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    LytSearch: TLayout;
    StyleBook: TStyleBook;
    RecSearch: TRectangle;
    Edit1: TEdit;
    Image3: TImage;
    Button1: TButton;
    lytOptions: TLayout;
    RectBase: TRectangle;
    RectOptions: TRectangle;
    Label2: TLabel;
    Label3: TLabel;
    LVRioLivre: TListView;
    imgLocation: TImage;
    imgOil: TImage;
    imgHour: TImage;
    procedure FormShow(Sender: TObject);
    procedure LVRioLivreItemClick(const Sender: TObject;
      const AItem: TListViewItem);
  private
    procedure AddPontoColetaLv(id_postocoleta: integer; nome, endereco,
                             hr_func: string; qtd_oil: string);
    procedure ListarPontoColeta;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.fmx}

uses UnitColetor;
//C�digo para Alimenta��o da List View com dados dos Postos de Coleta
procedure TFrmPrincipal.AddPontoColetaLv( id_postocoleta: integer;
                                           nome, endereco, hr_func: string;
                                           qtd_oil: string);

var
  img: TListItemImage;
  txt: TListItemText;
begin
     // Inserir o item e trabalhar com ele abaixo
     with LVRioLivre.Items.Add do
     begin
         Height:= 115;
         Tag:= id_postocoleta;

         img:= TListItemImage(Objects.FindDrawable('imgLocation'));
         img.Bitmap:= imgLocation.Bitmap;

         img:= TListItemImage(Objects.FindDrawable('imgOil'));
         img.Bitmap:= imgOil.Bitmap;

         img:= TListItemImage(Objects.FindDrawable('imgHour'));
         img.Bitmap:= imgHour.Bitmap;

         txt:= TListItemText(Objects.FindDrawable('txtNome'));
         txt.Text:= nome;

         txt:= TListItemText(Objects.FindDrawable('txtAdress'));
         txt.Text:= endereco;

         txt:= TListItemText(Objects.FindDrawable('txtQtde'));
         txt.Text:= 'Quantidade m�nima: ' + qtd_oil + ' Litros';

         txt:= TListItemText(Objects.FindDrawable('txtHour'));
         txt.Text:= hr_func;
     end;
end;

procedure TFrmPrincipal.ListarPontoColeta;
begin
      AddPontoColetaLv(1, 'Supermercado Dois Irm�os', 'Rua ABC, 1200','Seg a Sex', '2');
      AddPontoColetaLv(1, 'Supermercado Dois Irm�os', 'Rua ABC, 1200','Seg a Sex', '2');
      AddPontoColetaLv(1, 'Supermercado Dois Irm�os', 'Rua ABC, 1200','Seg a Sex', '2');
      AddPontoColetaLv(1, 'Supermercado Dois Irm�os', 'Rua ABC, 1200','Seg a Sex', '2');
end;

procedure TFrmPrincipal.LVRioLivreItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
    if NOT Assigned(FrmColetor) then
        Application.CreateForm(TFrmColetor, FrmColetor);

    FrmColetor.Show;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
      ListarPontoColeta;
end;

end.
