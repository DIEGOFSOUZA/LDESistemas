inherited Frm_PedidoVenda: TFrm_PedidoVenda
  Caption = 'Frm_PedidoVenda'
  ExplicitTop = -97
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFundo0: TPanel
    inherited pnlFundo1: TPanel
      inherited pnlPedido: TPanel
        inherited DBEdit1: TDBEdit
          DataField = 'ID_PEDVENDA'
          DataSource = ds
          ReadOnly = True
        end
        inherited DBEdit2: TDBEdit
          DataField = 'DT_EMISSAO'
          DataSource = ds
        end
        inherited DBEdit3: TDBEdit
          DataField = 'DT_ENTREGA'
          DataSource = ds
        end
        inherited DBPesquisa1: TDBPesquisa
          ConsultaTabela.Tabela = 'REPRESENTANTE'
          ConsultaTabela.Pesquisa = 'codigo'
          ConsultaTabela.Mostrar = 'nome'
          ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
          Mostrar.DataField = 'REPRESENTANTE'
          Mostrar.DataSource = ds
          Campo.DataField = 'ID_VENDEDOR'
          Campo.DataSource = ds
          OnPesquisa = DBPesquisa1Pesquisa
        end
      end
      inherited pnlCliente: TPanel
        inherited pgcCliente: TPageControl
          inherited tsDados: TTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 683
            ExplicitHeight = 90
            inherited pnlCliTopo: TPanel
              inherited DBPesquisa2: TDBPesquisa
                Width = 374
                Titulo.Width = 39
                Titulo.Caption = 'Cliente'
                Titulo.ExplicitWidth = 39
                ConsultaTabela.Tabela = 'CLIENTE'
                ConsultaTabela.Pesquisa = 'codigo'
                ConsultaTabela.Mostrar = 'nome_razao'
                ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
                Mostrar.Left = 123
                Mostrar.DataField = 'CLIENTE'
                Mostrar.DataSource = ds
                Mostrar.ExplicitLeft = 123
                Campo.Left = 41
                Campo.DataField = 'ID_CLIENTE'
                Campo.DataSource = ds
                Campo.ExplicitLeft = 41
                OnPesquisa = DBPesquisa2Pesquisa
                ExplicitWidth = 374
              end
              inherited DBEdit4: TDBEdit
                DataField = 'CLI_CPFCNPJ'
                DataSource = ds
              end
              inherited DBEdit6: TDBEdit
                DataField = 'CLI_EMAIL'
                DataSource = ds
              end
              inherited DBEdit7: TDBEdit
                DataField = 'CLI_TELEFONE'
                DataSource = ds
              end
              inherited DBEdit5: TDBEdit
                DataField = 'CLI_RGINSC'
                DataSource = ds
              end
            end
          end
          inherited tsFaturamento: TTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 683
            ExplicitHeight = 90
            inherited pnlCliEnderecos: TPanel
              ExplicitTop = -2
              inherited Label10: TLabel
                Left = 10
                Top = 33
                ExplicitLeft = 10
                ExplicitTop = 33
              end
              inherited Label11: TLabel
                Left = 94
                Top = 33
                ExplicitLeft = 94
                ExplicitTop = 33
              end
              inherited Label12: TLabel
                Left = 320
                Top = 33
                ExplicitLeft = 320
                ExplicitTop = 33
              end
              inherited Label13: TLabel
                Left = 364
                Top = 33
                ExplicitLeft = 364
                ExplicitTop = 33
              end
              inherited Label14: TLabel
                Left = 527
                Top = 33
                ExplicitLeft = 527
                ExplicitTop = 33
              end
              inherited DBEdit8: TDBEdit
                Left = 10
                Top = 52
                Width = 80
                DataField = 'CLI_F_CEP'
                DataSource = ds
                ExplicitLeft = 10
                ExplicitTop = 52
                ExplicitWidth = 80
              end
              inherited DBEdit9: TDBEdit
                Left = 94
                Top = 52
                Width = 222
                DataField = 'CLI_F_END'
                DataSource = ds
                ExplicitLeft = 94
                ExplicitTop = 52
                ExplicitWidth = 222
              end
              inherited DBEdit10: TDBEdit
                Left = 320
                Top = 52
                Width = 40
                DataField = 'CLI_F_NUM'
                DataSource = ds
                ExplicitLeft = 320
                ExplicitTop = 52
                ExplicitWidth = 40
              end
              inherited DBEdit11: TDBEdit
                Left = 364
                Top = 52
                DataField = 'CLI_F_COMPL'
                DataSource = ds
                ExplicitLeft = 364
                ExplicitTop = 52
              end
              inherited DBEdit12: TDBEdit
                Left = 527
                Top = 52
                Width = 146
                DataField = 'CLI_F_BAIRRO'
                DataSource = ds
                ExplicitLeft = 527
                ExplicitTop = 52
                ExplicitWidth = 146
              end
            end
          end
          inherited tsEntrega: TTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 683
            ExplicitHeight = 90
            inherited pnlEndEntrega: TPanel
              inherited lbl3: TLabel
                Left = 10
                ExplicitLeft = 10
              end
              inherited lbl4: TLabel
                Left = 94
                ExplicitLeft = 94
              end
              inherited lbl5: TLabel
                Left = 320
                ExplicitLeft = 320
              end
              inherited lbl6: TLabel
                Left = 364
                ExplicitLeft = 364
              end
              inherited lbl7: TLabel
                Left = 527
                ExplicitLeft = 527
              end
              inherited dbedt1: TDBEdit
                Left = 10
                Top = 52
                Width = 80
                DataField = 'CLI_E_CEP'
                DataSource = ds
                ExplicitLeft = 10
                ExplicitTop = 52
                ExplicitWidth = 80
              end
              inherited dbedt2: TDBEdit
                Left = 94
                Top = 52
                Width = 222
                DataField = 'CLI_E_END'
                DataSource = ds
                ExplicitLeft = 94
                ExplicitTop = 52
                ExplicitWidth = 222
              end
              inherited dbedt3: TDBEdit
                Left = 320
                Top = 52
                Width = 40
                DataField = 'CLI_E_NUM'
                DataSource = ds
                ExplicitLeft = 320
                ExplicitTop = 52
                ExplicitWidth = 40
              end
              inherited dbedt4: TDBEdit
                Left = 364
                Top = 52
                DataField = 'CLI_E_COMPL'
                DataSource = ds
                ExplicitLeft = 364
                ExplicitTop = 52
              end
              inherited dbedt5: TDBEdit
                Left = 527
                Top = 52
                Width = 146
                DataField = 'CLI_E_BAIRRO'
                DataSource = ds
                ExplicitLeft = 527
                ExplicitTop = 52
                ExplicitWidth = 146
              end
            end
          end
        end
      end
      inherited pnlItens: TPanel
        inherited cbbUM: TComboBox [1]
        end
        inherited pnlProdAdd: TPanel [2]
          inherited pnlItem: TPanel
            inherited edpsqsProduto: TEdPesquisa
              ConsultaTabela.Tabela = 'PRODUTO'
              ConsultaTabela.Pesquisa = 'codigo'
              ConsultaTabela.Mostrar = 'nome'
              ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
              OnPesquisa = edpsqsProdutoPesquisa
            end
          end
        end
        inherited pnlGrid: TPanel [3]
          inherited pnlAlocaGrid: TPanel
            inherited dbgrd1: TDBGrid
              DataSource = sItem
              Columns = <
                item
                  Expanded = False
                  FieldName = 'PRODUTO'
                  Width = 227
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTDE'
                  Title.Alignment = taCenter
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VL_UNITARIO'
                  Title.Alignment = taCenter
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VL_DESCONTO'
                  Title.Alignment = taCenter
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VL_TOTAL'
                  Title.Alignment = taCenter
                  Width = 121
                  Visible = True
                end>
            end
          end
        end
      end
      inherited pnlFreteOutros: TPanel
        inherited Panel2: TPanel
          inherited Panel3: TPanel
            inherited DBEdit13: TDBEdit
              DataField = 'DESCONTO'
              DataSource = ds
            end
            inherited DBEdit14: TDBEdit
              DataField = 'VL_FRETE'
              DataSource = ds
            end
            inherited DBEdit15: TDBEdit
              DataField = 'VL_O_CUSTOS'
              DataSource = ds
            end
          end
        end
      end
    end
    inherited pnlRight: TPanel
      inherited pnlPagamento: TPanel
        inherited pnlPag0: TPanel
          inherited pnlGridPagamento: TPanel
            ExplicitLeft = 201
            ExplicitTop = 0
            ExplicitWidth = 298
            ExplicitHeight = 289
            inherited pnlTitPagto: TPanel
              ExplicitLeft = 0
              ExplicitTop = 0
            end
            inherited pnlExcDup: TPanel
              ExplicitTop = 239
            end
          end
        end
      end
    end
  end
  inherited ds: TDataSource
    Left = 808
    Top = 200
  end
  inherited cds: TClientDataSet
    ProviderName = 'dspPedVenda'
    RemoteServer = DM.dspRPedido
    Left = 808
    Top = 152
    object cdsID_PEDVENDA: TIntegerField
      FieldName = 'ID_PEDVENDA'
      Origin = 'ID_PEDVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
    object cdsDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
      Origin = 'DT_EMISSAO'
    end
    object cdsDT_ENTRADA: TDateField
      FieldName = 'DT_ENTRADA'
      Origin = 'DT_ENTRADA'
    end
    object cdsDT_ENTREGA: TDateField
      FieldName = 'DT_ENTREGA'
      Origin = 'DT_ENTREGA'
    end
    object cdsID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object cdsCLI_CPFCNPJ: TStringField
      FieldName = 'CLI_CPFCNPJ'
      Origin = 'CLI_CPFCNPJ'
    end
    object cdsCLI_RGINSC: TStringField
      FieldName = 'CLI_RGINSC'
      Origin = 'CLI_RGINSC'
      Size = 30
    end
    object cdsCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Origin = 'CLI_EMAIL'
      Size = 70
    end
    object cdsCLI_TELEFONE: TStringField
      FieldName = 'CLI_TELEFONE'
      Origin = 'CLI_TELEFONE'
      Size = 15
    end
    object cdsCLI_F_CEP: TStringField
      FieldName = 'CLI_F_CEP'
      Origin = 'CLI_F_CEP'
      Size = 10
    end
    object cdsCLI_F_END: TStringField
      FieldName = 'CLI_F_END'
      Origin = 'CLI_F_END'
      Size = 45
    end
    object cdsCLI_F_NUM: TStringField
      FieldName = 'CLI_F_NUM'
      Origin = 'CLI_F_NUM'
      Size = 10
    end
    object cdsCLI_F_COMPL: TStringField
      FieldName = 'CLI_F_COMPL'
      Origin = 'CLI_F_COMPL'
      Size = 30
    end
    object cdsCLI_F_BAIRRO: TStringField
      FieldName = 'CLI_F_BAIRRO'
      Origin = 'CLI_F_BAIRRO'
      Size = 30
    end
    object cdsCLI_E_CEP: TStringField
      FieldName = 'CLI_E_CEP'
      Origin = 'CLI_E_CEP'
      Size = 10
    end
    object cdsCLI_E_END: TStringField
      FieldName = 'CLI_E_END'
      Origin = 'CLI_E_END'
      Size = 45
    end
    object cdsCLI_E_NUM: TStringField
      FieldName = 'CLI_E_NUM'
      Origin = 'CLI_E_NUM'
      Size = 10
    end
    object cdsCLI_E_COMPL: TStringField
      FieldName = 'CLI_E_COMPL'
      Origin = 'CLI_E_COMPL'
      Size = 30
    end
    object cdsCLI_E_BAIRRO: TStringField
      FieldName = 'CLI_E_BAIRRO'
      Origin = 'CLI_E_BAIRRO'
      Size = 30
    end
    object cdsDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object cdsVL_DESCONTO: TFMTBCDField
      FieldName = 'VL_DESCONTO'
      Origin = 'VL_DESCONTO'
      Precision = 18
      Size = 2
    end
    object cdsVL_FRETE: TFMTBCDField
      FieldName = 'VL_FRETE'
      Origin = 'VL_FRETE'
      Precision = 18
      Size = 2
    end
    object cdsVL_O_CUSTOS: TFMTBCDField
      FieldName = 'VL_O_CUSTOS'
      Origin = 'VL_O_CUSTOS'
      Precision = 18
      Size = 2
    end
    object cdsVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Origin = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object cdsfdqryPedVendaItem: TDataSetField
      FieldName = 'fdqryPedVendaItem'
    end
    object cdsfdqryPedVendaPagar: TDataSetField
      FieldName = 'fdqryPedVendaPagar'
    end
    object cdsREPRESENTANTE: TStringField
      FieldName = 'REPRESENTANTE'
      Origin = 'NOME'
      ProviderFlags = []
      Size = 45
    end
    object cdsCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'NOME_RAZAO'
      ProviderFlags = []
      Size = 100
    end
  end
  inherited dsDuplicata: TClientDataSet
    DataSetField = cdsfdqryPedVendaPagar
    FieldDefs = <
      item
        Name = 'ID_PEDVENDA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ORDEM'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'DT_VENC'
        DataType = ftDate
      end
      item
        Name = 'ID_CONDPAGTO'
        DataType = ftInteger
      end
      item
        Name = 'OBS'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'VL_PARCELA'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'VL_PAGO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'DTIME_BAIXA'
        DataType = ftTimeStamp
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PAGTO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 100
      end>
    Left = 920
    Top = 152
    object dsDuplicataID_PEDVENDA: TIntegerField
      FieldName = 'ID_PEDVENDA'
      Origin = 'ID_PEDVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dsDuplicataORDEM: TStringField
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 6
    end
    object dsDuplicataDT_VENC: TDateField
      FieldName = 'DT_VENC'
      Origin = 'DT_VENC'
    end
    object dsDuplicataID_CONDPAGTO: TIntegerField
      FieldName = 'ID_CONDPAGTO'
      Origin = 'ID_CONDPAGTO'
    end
    object dsDuplicataOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 100
    end
    object dsDuplicataVL_PARCELA: TFMTBCDField
      FieldName = 'VL_PARCELA'
      Origin = 'VL_PARCELA'
      Precision = 18
      Size = 2
    end
    object dsDuplicataVL_PAGO: TFMTBCDField
      FieldName = 'VL_PAGO'
      Origin = 'VL_PAGO'
      Precision = 18
      Size = 2
    end
    object dsDuplicataDTIME_BAIXA: TSQLTimeStampField
      FieldName = 'DTIME_BAIXA'
      Origin = 'DTIME_BAIXA'
    end
    object dsDuplicataUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 30
    end
    object dsDuplicataPAGTO: TStringField
      FieldName = 'PAGTO'
      Origin = 'PAGTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  inherited sDuplicata: TDataSource
    Left = 920
    Top = 200
  end
  object dsItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsfdqryPedVendaItem
    Params = <>
    Left = 861
    Top = 152
    object dsItemID_PEDVENDA: TIntegerField
      FieldName = 'ID_PEDVENDA'
      Origin = 'ID_PEDVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dsItemORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
    end
    object dsItemID_PROD: TIntegerField
      FieldName = 'ID_PROD'
      Origin = 'ID_PROD'
    end
    object dsItemID_UNIDADE: TIntegerField
      FieldName = 'ID_UNIDADE'
      Origin = 'ID_UNIDADE'
    end
    object dsItemQTDE: TFMTBCDField
      DisplayLabel = 'QTDE.'
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
      Size = 3
    end
    object dsItemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object dsItemVL_UNITARIO: TFMTBCDField
      DisplayLabel = 'UNIT'#193'RIO(R$)'
      FieldName = 'VL_UNITARIO'
      Origin = 'VL_UNITARIO'
      Precision = 18
      Size = 2
    end
    object dsItemVL_DESCONTO: TFMTBCDField
      DisplayLabel = 'DESCONTO(R$)'
      FieldName = 'VL_DESCONTO'
      Origin = 'VL_DESCONTO'
      Precision = 18
      Size = 2
    end
    object dsItemVL_TOTAL: TFMTBCDField
      DisplayLabel = 'TOTAL(R$)'
      FieldName = 'VL_TOTAL'
      Origin = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object dsItemPRODUTO: TStringField
      DisplayLabel = 'PRODUTO/SERVI'#199'O'
      FieldName = 'PRODUTO'
      Size = 100
    end
    object dsItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
  end
  object sItem: TDataSource
    DataSet = dsItem
    Left = 861
    Top = 201
  end
end
