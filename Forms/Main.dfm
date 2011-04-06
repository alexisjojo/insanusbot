object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Insanus Bot v8.7a'
  ClientHeight = 92
  ClientWidth = 239
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object clientList: TListBox
    Left = 0
    Top = 0
    Width = 239
    Height = 92
    Align = alClient
    ItemHeight = 13
    TabOrder = 0
    OnClick = clientListClick
  end
  object MainMenu: TMainMenu
    Left = 120
    object menuModules: TMenuItem
      Caption = 'Modules'
      object menuModulesCavebot: TMenuItem
        Caption = 'Cavebot'
        Enabled = False
      end
      object menuModulesHealing: TMenuItem
        Caption = 'Healing'
        OnClick = menuModulesHealingClick
      end
      object menuModulesHotkeys: TMenuItem
        Caption = 'Hotkeys'
        Enabled = False
      end
      object menuModulesTargeting: TMenuItem
        Caption = 'Targeting'
        Enabled = False
      end
      object menuModulesOthers: TMenuItem
        Caption = 'Others'
        object Alerts1: TMenuItem
          Caption = 'Alerts'
        end
        object Spy1: TMenuItem
          Caption = 'Spy'
        end
      end
    end
    object menuViews: TMenuItem
      Caption = 'Views'
      object menuViewsEngStates: TMenuItem
        Caption = 'Engine States'
        OnClick = menuViewsEngStatesClick
      end
      object menuViewsWptAdd: TMenuItem
        Caption = 'Waypoint Add'
        Enabled = False
      end
    end
    object menuSettings: TMenuItem
      Caption = 'Settings'
      object menuSettingsCloseOnExit: TMenuItem
        AutoCheck = True
        Caption = 'Close on Tibia exit'
        OnClick = menuSettingsCloseOnExitClick
      end
      object menuSettingsPauseBot: TMenuItem
        AutoCheck = True
        Caption = 'Pause Bot'
      end
      object menuSettingsPauseBotExceptHealing: TMenuItem
        AutoCheck = True
        Caption = 'Pause Bot except Healing'
      end
      object menuSettingsLockCL: TMenuItem
        AutoCheck = True
        Caption = 'Lock Client List'
        OnClick = menuSettingsLockCLClick
      end
    end
  end
  object TrayIcon: TTrayIcon
    Hint = 'Offline'
    Icon.Data = {
      0000010001002040000001002000A81000001600000028000000200000004000
      0000010020000000000000100000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000555F550080808000AA7F7F008080800080808000808080008080
      8000A4A0A000553F5500555F5500553F5500555F2A00555F5500553F5500555F
      5500555F5500553F5500555F5500553F5500555F5500553F5500555F55000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000555F550080808000555F55008080800080808000AA7F7F0080808000AA9F
      AA00555F5500FF7F7F00AA7F5500AA5F5500AA5F5500AA5F5500AA5F5500553F
      550055BFD400559FAA00559FFF0000BFD40055BFFF00559FAA00555F55000000
      0000000000000000000000000000000000000000000080808000AA7F7F00557F
      7F00AA7F5500553F550080808000555F5500AA5F7F00557F7F00AA7F7F008080
      8000555F5500AA7F5500A4A0A000AA7F5500AA5F5500AA5F5500AA7F5500553F
      5500559FAA00557FAA0000DFD40055DFFF0000BFD40055BFD400553F55000000
      0000000000000000000000000000000000008080800080808000AA9F7F008080
      800080808000555F5500555F550080808000555F5500AA7F7F00557F7F00FFBF
      AA00555F7F00A4A0A000FF9F7F00AA5F5500AA5F5500AA5F5500AA5F2A00555F
      5500559FAA00559FD40000BFFF0055BFD40055DFFF00009FD400555F55000000
      00000000000000000000000000008080800080808000AA9F7F00AA7F7F00AA7F
      7F0080808000AA7F7F00555F5500555F5500555F5500557F7F0080808000AABF
      D400555F5500FF7F7F00AA9F7F00AA7F5500AA5F2A00AA5F5500AA5F5500553F
      5500AA9FAA00559FAA00AABFD40000BFFF0000BFFF0055DFD400553F55000000
      00000000000000000000557F7F0080808000FF9F7F00AA9FAA00AA9F7F00AA9F
      7F00AA7F7F00808080008080800080808000AA9FAA00559FD400AABFD400FFFF
      FF00555F7F00AA9F5500FF9FAA00AA5F5500AA5F5500AA5F5500AA5F5500555F
      550055BFAA00009FD40055DFFF00AADFD40055DFFF00009FD400555F55000000
      00000000000080808000AA9F7F00AA9F7F00A4A0A000FF9F7F00AA9F7F00A4A0
      A00080808000AA7FAA00559FAA00557FAA00559FAA00AA9FAA00559FD400AABF
      D400557F5500553F5500553F5500555F5500553F5500555F5500555F2A00553F
      5500553F5500555F5500553F5500555F5500003F5500553F5500555F55000000
      00000000000080808000FF9FAA00AABF7F00FF9F7F00AA9F7F00FF9FAA008080
      8000559FAA00559FAA00557FAA00555FAA00003F7F00003F5500553F5500AA9F
      D400555F5500559FD400559FFF00001FAA00553FD400003FD400FF7F7F00005F
      5500AABFAA00557F5500559F550055BF7F0055BFAA0055BF5500553F55000000
      000080808000A4A0A000A4A0A000FF9FAA00FFBF7F00A4A0A000A4A0A0008080
      8000559FD400557FD400553F7F00C0DCC00080808000AA9FAA00AA7FAA00C0DC
      C000AA5F5500007FFF00557FD400555FD400003FAA00553FD400003FAA00553F
      5500559F5500559F550055BF7F0055BFAA0055BF7F00559F5500553F55000000
      000080808000FF9FAA00C0DCC000FF9FAA00A4A0A000FFBFAA0080808000557F
      D400559FAA00555FAA00003F7F00C0DCC000FFBFD400559FAA00AA9FAA00C0DC
      C000555F7F00557FD400559FD400001FD400553FD400005FD400551FAA00555F
      5500AABFAA00007F550055BF7F0055BFAA0055BF7F00559F7F00555F5500AA7F
      7F00AA9FAA00C0DCC000F0CAA600C0DCC000FFBFAA00A4A0A000557FAA00007F
      D400557FD400005FAA00003F5500FFCCFF00C0DCC000555F7F00003F5500A4A0
      A000555F7F00559FD400007FD400555FD400003FD400003FD400AA7FAA00553F
      550055BFAA00559F5500559F550055BFAA0055BF7F0055BF7F00553F55008080
      8000A4A0A000FFDFD400FFBFD400F0CAA600C0DCC000AA9FAA00005FAA00557F
      D400005FD400555FAA00003F5500FFDFD400AABFD400555F7F00003F7F00AABF
      D400555F5500559FD400557FD400001FD400553FAA00555FD400003FD400555F
      550080808000557F550055BF7F0055BF7F0055BFAA0055BF7F00555F2A008080
      8000C0DCC000FFFFFF00FFDFD400C0DCC000FFDFFF0080808000005FD400005F
      AA00555FAA00005FAA00001F7F00C0DCC000AABFD400553F5500555FAA00AABF
      D400AA9FAA00555F7F00555F5500555F5500555F7F00555F5500555F5500555F
      7F00555F5500555F5500555F7F00555F5500555F5500555F5500AA9FAA008080
      8000FFFFFF00FFDFD400C0DCC000FFBFD400C0DCC000555FAA00005FAA00555F
      D400005FAA00553FAA00003F5500FFDFD400A4A0A000005F7F00003F7F00557F
      D400AADFD400AABFD400AA9FD400C0DCC000FFDFFF00AABFD400AA9FAA00AABF
      D400AADFFF00FFFFFF00C0DCC000FFBFD400AA9FAA00AA9F7F00AA9FAA00557F
      7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFDFD400003FAA00553FAA00005F
      AA00005FAA00005FAA00551F5500AADFFF00A4A0A000553F5500555FAA00005F
      AA00557FD400557FD40000808000555FAA00C0DCC00080808000553F5500557F
      D40055BFD400AA9FD400559FAA0080808000AA9F7F00A4A0A00080808000AA7F
      7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0DCC000005FAA00003FAA00553F
      AA00003FAA00003FAA00003F5500FFDFD400AABFAA00003F7F00003F7F00557F
      D400555FAA00007FD400553F7F00555F7F00C0DCC000AA9FAA00003F5500557F
      AA00AA9FD40055BFD400AA7FAA0080808000AA9F7F0080808000AA9FAA00557F
      7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0DCC000553F7F00003FAA00005F
      AA00555FAA00555FAA00001F5500C0DCC000AA9FD400555F5500003FAA00555F
      AA00007FD400555FAA00005F7F00555FAA00C0DCC000AA7FAA00003F7F00557F
      AA00559FD400559FD400808080008080800080808000AA7FAA0080808000AA7F
      7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00005FAA00555F7F00005F
      AA00557FAA00003F7F00003F7F00FFDFD400A4A0A000003F7F00553F7F00005F
      AA00005FD400555FAA00003F7F0080808000AABFD40080808000553F7F00007F
      AA00559FD400559FFF0080808000555F5500808080008080800080808000557F
      7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA9FAA00555FAA00555F
      D400AA9FD400555FAA00001F5500FFDFD400A4A0A000553F7F00003F7F00005F
      AA00555FAA00003FAA00001F5500AA7FD400C0DCC000557F7F00003F5500557F
      D400557FD40080808000557F7F0080808000AA7F550080808000808080008080
      8000FFDFD400FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0DCC000559FAA00C0DC
      C000557FAA00555FAA00001F5500C0DCC000AA9FAA00553F550000008000005F
      AA00003F7F00003F5500555F7F00C0DCC000AA9FD400553F7F00003FAA00557F
      AA00007FD400557FAA00553F5500555F5500555F7F00557F5500AA7F7F008080
      8000C0DCC000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCFF00AABF
      AA00555FAA00003F7F00001F5500FFCCFF00C0DCC000003F7F00001F5500001F
      5500001F5500555FAA00FFBFD400C0DCC00080808000003F5500005FAA00007F
      D400555FD4008080800080808000555F5500555F5500AA5F7F00557F55008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00559F
      D400557FAA00555F7F00001F5500C0DCC000C0DCC000AA9FAA0080808000557F
      AA00FFBFAA00AABFD400C0DCC000AA7FAA00001F7F00003FAA00555FAA00005F
      AA00557FAA0080808000557F5500AA5F5500555F7F0080808000808080000000
      000080808000C0DCC000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AABF
      AA00555FAA00003F7F00001F5500FFFFFF00FFDFD400FFCCFF00C0DCC000FFDF
      D400AABFD400AA9FAA00553F7F00001F5500003F7F00555FAA00005FAA00557F
      AA0080808000AA9F7F00AA5F7F0080808000555F550080808000000000000000
      00008080800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AA9FAA00003F7F00003F5500001F5500001F5500001F5500001F5500001F
      5500001F5500001F5500003F7F00003F7F00003FAA00003FAA00005FAA00AA7F
      AA00AA9F7F0080808000AA9F7F00AA7F7F0080808000557F5500000000000000
      00000000000080808000A4A0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00AA9FAA00553F7F00003F7F00001F7F00003F5500001F7F00003F
      5500001F7F00003F7F00003F7F00003FAA00003FAA00555F7F00AA9FAA00AA9F
      7F00AA9F7F00AA9F7F0080808000AA9F7F008080800000000000000000000000
      0000000000008080800080808000FFDFD400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0DCC00080808000005F7F00553F7F00003F7F00003F
      7F00003F7F00003F7F00553FAA00555F7F0080808000AABFD400FF9F7F00AA9F
      AA00FF9F7F00AA9FAA00AA7F7F00808080008080800000000000000000000000
      000000000000000000008080800080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFDFFF00C0DCC000AABFAA00AA9F
      AA00A4A0A000AA9FD400AABFAA00C0DCC000C0DCC000FF9FAA00AABF7F00FF9F
      7F00AA9F7F00AA9F7F00AA9F7F00808080000000000000000000000000000000
      00000000000000000000000000008080800080808000FFDFD400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFDFD400C0DCC000FFCCFF00F0CAA600F0CAA600AABFAA00FF9FAA00AABF
      AA00FF9F7F008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000A4A0A000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFDFD400FFDFD400C0DCC000FFCCCC00FFBFAA00AABFAA00FF9F
      7F00808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000C0DCC000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0DCC000FFBFD400C0DCC000FFBFAA00AA9FAA008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      80008080800080808000A4A0A000C0DCC000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFCCCC00C0DCC000A4A0A00080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFC0
      0000FF000000FC000000F8000000F0000000E0000000C0000000C00000008000
      0000800000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008000000180000001C000
      0003C0000003E0000007F000000FF800001FFC00003FFF0000FFFFC003FF}
    PopupMenu = TrayIconMenu
    Visible = True
    OnDblClick = TrayIconDblClick
  end
  object TrayIconMenu: TPopupMenu
    Left = 64
    object trayShow: TMenuItem
      Caption = 'Show'
      OnClick = trayShowClick
    end
    object trayExit: TMenuItem
      Caption = 'Exit'
      OnClick = trayExitClick
    end
  end
  object RijndaelEncryption: TLbRijndael
    CipherMode = cmECB
    KeySize = ks256
    Left = 192
  end
end
