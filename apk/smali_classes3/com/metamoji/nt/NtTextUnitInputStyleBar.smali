.class public Lcom/metamoji/nt/NtTextUnitInputStyleBar;
.super Landroid/widget/LinearLayout;
.source "NtTextUnitInputStyleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/metamoji/ui/MenuEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextColorButtonImage;,
        Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;,
        Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;,
        Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;,
        Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextColorButtonDrawable;
    }
.end annotation


# static fields
.field private static _showSetting:Z


# instance fields
.field private _boldBtn:Landroid/widget/ToggleButton;

.field private _fontBold:Z

.field private _fontItalic:Z

.field private _fontName:Ljava/lang/String;

.field private _fontNameBtn:Lcom/metamoji/ui/ImageButtonWithText;

.field private _fontSize:F

.field private _fontSizeBtn:Lcom/metamoji/ui/ImageButtonWithText;

.field private _fontSizeMinusBtn:Landroid/widget/ImageButton;

.field private _fontSizePlusBtn:Landroid/widget/ImageButton;

.field private _fontStrikeThrough:Z

.field private _fontUnderline:Z

.field private _insertLineSeparatorBtn:Landroid/widget/ImageButton;

.field private _isFontNameDefault:Z

.field private _isFontSizeDefault:Z

.field private _isTextColorDefault:Z

.field private _italicBtn:Landroid/widget/ToggleButton;

.field private _listBtn:Landroid/widget/ImageButton;

.field private _modifiedFlag:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;"
        }
    .end annotation
.end field

.field private _selectedStateTextKind:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/TextKind;",
            ">;"
        }
    .end annotation
.end field

.field private _strikeoutBtn:Landroid/widget/ToggleButton;

.field private _textAlignBtn:Landroid/widget/ImageButton;

.field private _textBackgroundColor:Ljava/lang/Integer;

.field private _textColor:Ljava/lang/Integer;

.field private _textColorBtn:Landroid/widget/ImageButton;

.field private _textColorButtonImage:Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextColorButtonImage;

.field private _underlineBtn:Landroid/widget/ToggleButton;

.field private _unitController:Lcom/metamoji/un/text/UnTextUnit;

.field private _useTextBackgroundColor:Z


# direct methods
.method static bridge synthetic -$$Nest$fget_boldBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Landroid/widget/ToggleButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_boldBtn:Landroid/widget/ToggleButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_fontBold(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontBold:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_fontItalic(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontItalic:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_fontName(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_fontNameBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Lcom/metamoji/ui/ImageButtonWithText;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontNameBtn:Lcom/metamoji/ui/ImageButtonWithText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_fontSize(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)F
    .locals 0

    iget p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontSize:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_fontSizeBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Lcom/metamoji/ui/ImageButtonWithText;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontSizeBtn:Lcom/metamoji/ui/ImageButtonWithText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_fontSizeMinusBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontSizeMinusBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_fontSizePlusBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontSizePlusBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_fontStrikeThrough(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontStrikeThrough:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_fontUnderline(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontUnderline:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_insertLineSeparatorBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_insertLineSeparatorBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_isFontNameDefault(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_isFontNameDefault:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_isFontSizeDefault(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_isFontSizeDefault:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_isTextColorDefault(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_isTextColorDefault:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_italicBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Landroid/widget/ToggleButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_italicBtn:Landroid/widget/ToggleButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_listBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_listBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_modifiedFlag(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/util/EnumSet;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_modifiedFlag:Ljava/util/EnumSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_strikeoutBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Landroid/widget/ToggleButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_strikeoutBtn:Landroid/widget/ToggleButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_textAlignBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textAlignBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_textBackgroundColor(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textBackgroundColor:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_textColor(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textColor:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_textColorBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textColorBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_underlineBtn(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Landroid/widget/ToggleButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_underlineBtn:Landroid/widget/ToggleButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_unitController(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Lcom/metamoji/un/text/UnTextUnit;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_useTextBackgroundColor(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_useTextBackgroundColor:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1158
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "MMJTextUnitShowSytleBar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_showSetting:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 259
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 245
    const-class v0, Lcom/metamoji/un/text/model/TextKind;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_selectedStateTextKind:Ljava/util/EnumSet;

    .line 548
    const-class v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_modifiedFlag:Ljava/util/EnumSet;

    const/4 v0, 0x0

    .line 646
    iput-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textColor:Ljava/lang/Integer;

    .line 260
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 254
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 245
    const-class p2, Lcom/metamoji/un/text/model/TextKind;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_selectedStateTextKind:Ljava/util/EnumSet;

    .line 548
    const-class p2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_modifiedFlag:Ljava/util/EnumSet;

    const/4 p2, 0x0

    .line 646
    iput-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textColor:Ljava/lang/Integer;

    .line 255
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 249
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 245
    const-class p2, Lcom/metamoji/un/text/model/TextKind;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_selectedStateTextKind:Ljava/util/EnumSet;

    .line 548
    const-class p2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_modifiedFlag:Ljava/util/EnumSet;

    const/4 p2, 0x0

    .line 646
    iput-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textColor:Ljava/lang/Integer;

    .line 250
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static beTextUnitInputStyleBarShown(Landroidx/fragment/app/FragmentActivity;)Z
    .locals 0

    .line 1163
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_showSetting:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private btnBulletedList_Click()V
    .locals 6

    .line 1058
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1061
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;->BulletedList:Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_TEXT_BULLETEDLIST:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1062
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->tuisb_list_mark:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 1063
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->tuisb_list_mark:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiMenuItem;->set_PushIcon_resid(I)V

    .line 1064
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1068
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;->BulletedListNumberd:Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_TEXT_NUMBEREDLIST:I

    invoke-direct {v1, v2, v4, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1069
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->tuisb_list_number:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 1070
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->tuisb_list_number:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiMenuItem;->set_PushIcon_resid(I)V

    .line 1071
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1074
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnitStateManager;->focusTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1077
    sget-object v2, Lcom/metamoji/un/text/UnTextUnit$CommandId;->BulletedListLevelDemote:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1078
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;->BulletedListLevelDemote:Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_TEXT_DEMOTE_LISTLEVEL:I

    invoke-direct {v2, v3, v4, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1079
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->tuisb_list_indent_right:I

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 1080
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->tuisb_list_indent_right:I

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_PushIcon_resid(I)V

    .line 1081
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
    :cond_0
    sget-object v2, Lcom/metamoji/un/text/UnTextUnit$CommandId;->BulletedListLevelPromote:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1085
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;->BulletedListLevelPromote:Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_TEXT_PROMOTE_LISTLEVEL:I

    invoke-direct {v2, v3, v4, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1086
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->tuisb_list_indent_left:I

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 1087
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->tuisb_list_indent_left:I

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_PushIcon_resid(I)V

    .line 1088
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    :cond_1
    sget-object v2, Lcom/metamoji/un/text/UnTextUnit$CommandId;->BulletedListRemove:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1092
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;->BulletedListRemove:Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->CONTEXTMENU_TEXT_REMOVE_LISTFORMAT:I

    invoke-direct {v1, v2, v4, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1093
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->tuisb_list_cancel:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 1094
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->tuisb_list_cancel:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiMenuItem;->set_PushIcon_resid(I)V

    .line 1095
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3

    return-void

    .line 1102
    :cond_3
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getMenu()Lcom/metamoji/ui/CustomMenuView;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_listBtn:Landroid/widget/ImageButton;

    .line 1103
    invoke-direct {p0, v2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->getAnchorRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_UP:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    .line 1102
    invoke-virtual {v1, v0, p0, v2, v3}, Lcom/metamoji/ui/CustomMenuView;->ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;Lcom/metamoji/ui/CustomMenuView$MenuDirection;)V

    return-void
.end method

.method private btnBulletedList_Tapped(Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;)V
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v0, :cond_5

    .line 1112
    invoke-virtual {p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1126
    :cond_0
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->commandBulletedListRemove()V

    return-void

    .line 1123
    :cond_1
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->commandBulletedListLevelPromote()V

    return-void

    .line 1120
    :cond_2
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->commandBulletedListLevelDemote()V

    return-void

    .line 1117
    :cond_3
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->commandInsertBulletedListNumbered()V

    return-void

    .line 1114
    :cond_4
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->commandInsertBulletedList()V

    :cond_5
    :goto_0
    return-void
.end method

.method private btnFontBold_Click(Z)V
    .locals 2

    .line 872
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_modifiedFlag:Ljava/util/EnumSet;

    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontWeight:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 873
    iput-boolean p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontBold:Z

    .line 877
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 878
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    iget-boolean v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontBold:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2bc

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    :goto_0
    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/UnTextUnit;->changeAttrFontWeight(I)V

    :cond_1
    return-void
.end method

.method private btnFontColor_Tapped()V
    .locals 7

    .line 924
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result v4

    .line 925
    new-instance v1, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    iget-object v2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textColor:Ljava/lang/Integer;

    iget-boolean v3, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_isTextColorDefault:Z

    iget-object v5, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textBackgroundColor:Ljava/lang/Integer;

    iget-boolean v6, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_useTextBackgroundColor:Z

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;-><init>(Ljava/lang/Integer;ZILjava/lang/Integer;Z)V

    .line 927
    new-instance v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;

    invoke-direct {v0, p0, v1, v4}, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;-><init>(Lcom/metamoji/nt/NtTextUnitInputStyleBar;Lcom/metamoji/ui/dialog/TextAndBackgroundColor;I)V

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 988
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 990
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 991
    const-string v2, "TextAndBackgroundColor"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private btnFontItalic_Click(Z)V
    .locals 2

    .line 886
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_modifiedFlag:Ljava/util/EnumSet;

    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Italic:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 887
    iput-boolean p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontItalic:Z

    .line 890
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 891
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    iget-boolean v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontItalic:Z

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/UnTextUnit;->changeAttrFontItalic(Z)V

    :cond_0
    return-void
.end method

.method private btnFontName_Tapped()V
    .locals 4

    .line 752
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v0

    .line 753
    invoke-static {v0}, Lcom/metamoji/un/text/FontUtils;->getRenderingFontInfo(Ljava/lang/String;)Lcom/metamoji/un/text/FontInfo;

    move-result-object v0

    .line 754
    iget-object v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontName:Ljava/lang/String;

    invoke-static {v1}, Lcom/metamoji/un/text/FontUtils;->getRenderingFontInfo(Ljava/lang/String;)Lcom/metamoji/un/text/FontInfo;

    move-result-object v1

    .line 755
    new-instance v2, Lcom/metamoji/ui/dialog/FontList;

    iget-object v1, v1, Lcom/metamoji/un/text/FontInfo;->familyName:Ljava/lang/String;

    iget-object v3, v0, Lcom/metamoji/un/text/FontInfo;->familyName:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Lcom/metamoji/ui/dialog/FontList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    new-instance v1, Lcom/metamoji/nt/NtTextUnitInputStyleBar$1;

    invoke-direct {v1, p0, v2, v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar$1;-><init>(Lcom/metamoji/nt/NtTextUnitInputStyleBar;Lcom/metamoji/ui/dialog/FontList;Lcom/metamoji/un/text/FontInfo;)V

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/dialog/FontList;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 773
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 775
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 776
    const-string v1, "FontList"

    invoke-virtual {v2, v0, v1}, Lcom/metamoji/ui/dialog/FontList;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private btnFontSizeAmount_Tapped(F)V
    .locals 2

    .line 810
    invoke-direct {p0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->sizeChangeBaseSize()F

    move-result v0

    add-float/2addr v0, p1

    .line 811
    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->adjustFontSize(F)F

    move-result p1

    .line 812
    iget v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontSize:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_modifiedFlag:Ljava/util/EnumSet;

    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 816
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setFontSize(FZ)V

    .line 819
    iget-object v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 820
    iget-object v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/un/text/UnTextUnit;->changeAttrFontSize(FZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private btnFontSizeMinus_Click()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 828
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->btnFontSizeAmount_Tapped(F)V

    return-void
.end method

.method private btnFontSizePlus_Click()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 833
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->btnFontSizeAmount_Tapped(F)V

    return-void
.end method

.method private btnFontSize_Tapped()V
    .locals 4

    .line 838
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result v0

    .line 839
    new-instance v1, Lcom/metamoji/ui/dialog/TextSize;

    .line 840
    invoke-direct {p0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->sizeChangeBaseSize()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-boolean v3, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_isFontSizeDefault:Z

    invoke-direct {v1, v2, v3, v0}, Lcom/metamoji/ui/dialog/TextSize;-><init>(Ljava/lang/Float;ZF)V

    .line 841
    new-instance v2, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar$2;-><init>(Lcom/metamoji/nt/NtTextUnitInputStyleBar;Lcom/metamoji/ui/dialog/TextSize;F)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/dialog/TextSize;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 863
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 865
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 866
    const-string v2, "TextSize"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/ui/dialog/TextSize;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private btnFontStrikeThrough_Click(Z)V
    .locals 2

    .line 912
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_modifiedFlag:Ljava/util/EnumSet;

    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Strikeout:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 913
    iput-boolean p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontStrikeThrough:Z

    .line 916
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 917
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    iget-boolean v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontStrikeThrough:Z

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/UnTextUnit;->changeAttrFontStrikeThrough(Z)V

    :cond_0
    return-void
.end method

.method private btnFontUnderline_Click(Z)V
    .locals 2

    .line 899
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_modifiedFlag:Ljava/util/EnumSet;

    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Underline:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 900
    iput-boolean p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontUnderline:Z

    .line 903
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 904
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    iget-boolean v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontUnderline:Z

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/UnTextUnit;->changeAttrFontUnderline(Z)V

    :cond_0
    return-void
.end method

.method private btnInsertLineSeparator_Click()V
    .locals 2

    .line 1133
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v0, :cond_0

    .line 1134
    sget-object v1, Lcom/metamoji/un/text/UnTextUnit$CommandId;->InsertLineSeparator:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->commandInsertLineSeparator()V

    :cond_0
    return-void
.end method

.method private btnTextAlign_Click()V
    .locals 5

    .line 1003
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;->Left:Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextAlign_Left:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1007
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->tuisb_ta_left:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 1008
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->tuisb_ta_left:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiMenuItem;->set_PushIcon_resid(I)V

    .line 1009
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;->Center:Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextAlign_Center:I

    invoke-direct {v1, v2, v4, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1014
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->tuisb_ta_center:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 1015
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->tuisb_ta_center:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiMenuItem;->set_PushIcon_resid(I)V

    .line 1016
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1020
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;->Right:Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextAlign_Right:I

    invoke-direct {v1, v2, v4, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1021
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->tuisb_ta_right:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 1022
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->tuisb_ta_right:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiMenuItem;->set_PushIcon_resid(I)V

    .line 1023
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getMenu()Lcom/metamoji/ui/CustomMenuView;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textAlignBtn:Landroid/widget/ImageButton;

    .line 1027
    invoke-direct {p0, v2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->getAnchorRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_UP:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    .line 1026
    invoke-virtual {v1, v0, p0, v2, v3}, Lcom/metamoji/ui/CustomMenuView;->ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;Lcom/metamoji/ui/CustomMenuView$MenuDirection;)V

    return-void
.end method

.method private btnTextAlign_Tapped(Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;)V
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v0, :cond_3

    .line 1037
    invoke-virtual {p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1043
    :cond_0
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->Right:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/UnTextUnit;->changeTextAlign(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;)V

    return-void

    .line 1041
    :cond_1
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->Centering:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/UnTextUnit;->changeTextAlign(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;)V

    return-void

    .line 1039
    :cond_2
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->Left:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/UnTextUnit;->changeTextAlign(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private getAnchorRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .line 1143
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x0

    .line 1144
    invoke-static {v0, p1, v1}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1145
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1149
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1150
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 264
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$layout;->textunit_input_style_bar:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 266
    sget p1, Lcom/metamoji/noteanytime/R$id;->fontnameBtn:I

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/ImageButtonWithText;

    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontNameBtn:Lcom/metamoji/ui/ImageButtonWithText;

    .line 267
    sget p1, Lcom/metamoji/noteanytime/R$id;->fontsizeMinusBtn:I

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontSizeMinusBtn:Landroid/widget/ImageButton;

    .line 268
    sget p1, Lcom/metamoji/noteanytime/R$id;->fontsizeBtn:I

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/ImageButtonWithText;

    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontSizeBtn:Lcom/metamoji/ui/ImageButtonWithText;

    .line 269
    sget p1, Lcom/metamoji/noteanytime/R$id;->fontsizePlusBtn:I

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontSizePlusBtn:Landroid/widget/ImageButton;

    .line 270
    sget p1, Lcom/metamoji/noteanytime/R$id;->textColorBtn:I

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textColorBtn:Landroid/widget/ImageButton;

    .line 271
    sget p1, Lcom/metamoji/noteanytime/R$id;->boldBtn:I

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_boldBtn:Landroid/widget/ToggleButton;

    .line 272
    sget p1, Lcom/metamoji/noteanytime/R$id;->italicBtn:I

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_italicBtn:Landroid/widget/ToggleButton;

    .line 273
    sget p1, Lcom/metamoji/noteanytime/R$id;->underlineBtn:I

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_underlineBtn:Landroid/widget/ToggleButton;

    .line 274
    sget p1, Lcom/metamoji/noteanytime/R$id;->strikeoutBtn:I

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_strikeoutBtn:Landroid/widget/ToggleButton;

    .line 275
    sget p1, Lcom/metamoji/noteanytime/R$id;->textAlignBtn:I

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textAlignBtn:Landroid/widget/ImageButton;

    .line 276
    sget p1, Lcom/metamoji/noteanytime/R$id;->listBtn:I

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_listBtn:Landroid/widget/ImageButton;

    .line 277
    sget p1, Lcom/metamoji/noteanytime/R$id;->insertLineSeparatorBtn:I

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_insertLineSeparatorBtn:Landroid/widget/ImageButton;

    .line 280
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontNameBtn:Lcom/metamoji/ui/ImageButtonWithText;

    invoke-virtual {p1, p0}, Lcom/metamoji/ui/ImageButtonWithText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontSizeMinusBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontSizeBtn:Lcom/metamoji/ui/ImageButtonWithText;

    invoke-virtual {p1, p0}, Lcom/metamoji/ui/ImageButtonWithText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontSizePlusBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textColorBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_boldBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 286
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_italicBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 287
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_underlineBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 288
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_strikeoutBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 289
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textAlignBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_listBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_insertLineSeparatorBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->resetButtonStyle()V

    .line 298
    new-instance p1, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextColorButtonImage;

    invoke-direct {p1, p0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextColorButtonImage;-><init>(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)V

    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textColorButtonImage:Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextColorButtonImage;

    return-void
.end method

.method private setTextColorButtonColor()V
    .locals 5

    .line 688
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textColorButtonImage:Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextColorButtonImage;

    iget-object v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textColor:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextColorButtonImage;->createNewBitmap(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 691
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 692
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 693
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 694
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v3, 0x10100a7

    .line 695
    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v3, 0x101009c

    .line 696
    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v2, 0x101009e

    .line 697
    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 698
    iget-object v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textColorBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private sizeChangeBaseSize()F
    .locals 3

    .line 782
    iget v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontSize:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_3

    .line 785
    iget-object v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    if-nez v1, :cond_0

    goto :goto_0

    .line 788
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getTextInput()Lcom/metamoji/un/text/model/ITextInput;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 792
    :cond_1
    invoke-interface {v1}, Lcom/metamoji/un/text/model/ITextInput;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    const/4 v2, 0x1

    .line 793
    invoke-interface {v1, v0, v2}, Lcom/metamoji/un/text/model/ITextInput;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    .line 796
    invoke-interface {v1, v0, v2}, Lcom/metamoji/un/text/model/ITextInput;->textRangeFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    .line 797
    iget-object v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/UnTextUnit;->GetAttributesInRange(Lcom/metamoji/un/text/model/TextRange;)Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object v0

    .line 799
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/Attributes;->getFontSize()F

    move-result v1

    .line 801
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/Attributes;->isUseFontSize()Z

    move-result v0

    if-nez v0, :cond_2

    .line 802
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->GetDefaultFontSize()F

    move-result v0

    return v0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method public static toggleShowSetting(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 1168
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1171
    :cond_0
    sget-boolean v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_showSetting:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_showSetting:Z

    .line 1172
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "MMJTextUnitShowSytleBar"

    sget-boolean v2, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_showSetting:Z

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 1174
    invoke-static {p0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->beTextUnitInputStyleBarShown(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p0

    .line 1176
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getTextUnitInputStyleBar()Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 1177
    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v1, :cond_1

    .line 1178
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->updateInputStyleBar()V

    :cond_1
    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    .line 1180
    :goto_0
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public checkControlEnable()V
    .locals 6

    .line 1200
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->focusTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1203
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->isInComposition()Z

    move-result v2

    .line 1206
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->isStrokeReeditMode()Z

    move-result v3

    .line 1209
    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$CommandId;->InsertLineSeparator:Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-virtual {v0, v4}, Lcom/metamoji/un/text/UnTextUnit;->canPerformCommand(Lcom/metamoji/un/text/UnTextUnit$CommandId;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v1

    .line 1216
    :goto_2
    iget-object v3, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_selectedStateTextKind:Ljava/util/EnumSet;

    sget-object v5, Lcom/metamoji/un/text/model/TextKind;->Stroke:Lcom/metamoji/un/text/model/TextKind;

    invoke-virtual {v3, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_selectedStateTextKind:Ljava/util/EnumSet;

    sget-object v5, Lcom/metamoji/un/text/model/TextKind;->String:Lcom/metamoji/un/text/model/TextKind;

    invoke-virtual {v3, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v4

    .line 1220
    :cond_3
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    new-instance v4, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar$4;-><init>(Lcom/metamoji/nt/NtTextUnitInputStyleBar;ZZZ)V

    invoke-virtual {v3, v4}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clearModifiedFlag()V
    .locals 1

    .line 550
    const-class v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_modifiedFlag:Ljava/util/EnumSet;

    return-void
.end method

.method getSelectedStateTextKindValue()I
    .locals 3

    .line 1256
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_selectedStateTextKind:Ljava/util/EnumSet;

    sget-object v1, Lcom/metamoji/un/text/model/TextKind;->String:Lcom/metamoji/un/text/model/TextKind;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1258
    iget-object v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_selectedStateTextKind:Ljava/util/EnumSet;

    sget-object v2, Lcom/metamoji/un/text/model/TextKind;->Stroke:Lcom/metamoji/un/text/model/TextKind;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 434
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    .line 439
    instance-of v1, v0, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v1, :cond_0

    .line 440
    check-cast v0, Lcom/metamoji/un/text/UnTextUnit;

    iput-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    .line 443
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 727
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->boldBtn:I

    if-ne v0, v1, :cond_0

    .line 728
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->btnFontBold_Click(Z)V

    return-void

    .line 729
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->italicBtn:I

    if-ne v0, v1, :cond_1

    .line 730
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->btnFontItalic_Click(Z)V

    return-void

    .line 731
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->underlineBtn:I

    if-ne v0, v1, :cond_2

    .line 732
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->btnFontUnderline_Click(Z)V

    return-void

    .line 733
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    sget v0, Lcom/metamoji/noteanytime/R$id;->strikeoutBtn:I

    if-ne p1, v0, :cond_3

    .line 734
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->btnFontStrikeThrough_Click(Z)V

    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 706
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->fontnameBtn:I

    if-ne v0, v1, :cond_0

    .line 707
    invoke-direct {p0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->btnFontName_Tapped()V

    return-void

    .line 708
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->fontsizeMinusBtn:I

    if-ne v0, v1, :cond_1

    .line 709
    invoke-direct {p0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->btnFontSizeMinus_Click()V

    return-void

    .line 710
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->fontsizeBtn:I

    if-ne v0, v1, :cond_2

    .line 711
    invoke-direct {p0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->btnFontSize_Tapped()V

    return-void

    .line 712
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->fontsizePlusBtn:I

    if-ne v0, v1, :cond_3

    .line 713
    invoke-direct {p0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->btnFontSizePlus_Click()V

    return-void

    .line 714
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->textColorBtn:I

    if-ne v0, v1, :cond_4

    .line 715
    invoke-direct {p0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->btnFontColor_Tapped()V

    return-void

    .line 716
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->textAlignBtn:I

    if-ne v0, v1, :cond_5

    .line 717
    invoke-direct {p0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->btnTextAlign_Click()V

    return-void

    .line 718
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->listBtn:I

    if-ne v0, v1, :cond_6

    .line 719
    invoke-direct {p0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->btnBulletedList_Click()V

    return-void

    .line 720
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/metamoji/noteanytime/R$id;->insertLineSeparatorBtn:I

    if-ne p1, v0, :cond_7

    .line 721
    invoke-direct {p0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->btnInsertLineSeparator_Click()V

    :cond_7
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 413
    instance-of v0, p1, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;

    if-nez v0, :cond_0

    return-void

    .line 416
    :cond_0
    check-cast p1, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;

    .line 418
    invoke-virtual {p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 420
    iget-object v0, p1, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->modifiedFlag:Ljava/util/EnumSet;

    iput-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_modifiedFlag:Ljava/util/EnumSet;

    .line 421
    iget-object v0, p1, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontName:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->isFontNameDefault:Z

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setFontName(Ljava/lang/String;Z)V

    .line 422
    iget v0, p1, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontSize:F

    iget-boolean v1, p1, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->isFontSizeDefault:Z

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setFontSize(FZ)V

    .line 423
    iget-object v0, p1, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->textColor:Ljava/lang/Integer;

    iget-boolean v1, p1, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->isTextColorDefault:Z

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setTextColor(Ljava/lang/Integer;Z)V

    .line 424
    iget-boolean v0, p1, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontBold:Z

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setFontBold(Z)V

    .line 425
    iget-boolean v0, p1, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontItalic:Z

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setFontItalic(Z)V

    .line 426
    iget-boolean v0, p1, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontUnderline:Z

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setFontUnderline(Z)V

    .line 427
    iget-boolean v0, p1, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->fontStrikeThrough:Z

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setFontStrikeThrough(Z)V

    .line 428
    iget-object v0, p1, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->textBackgroundColor:Ljava/lang/Integer;

    iget-boolean v1, p1, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->useTextBackgroundColor:Z

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setTextBackgroundColor(Ljava/lang/Integer;Z)V

    .line 429
    iget p1, p1, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;->selectedStateTextKind:I

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setSelectedStateTextKindValue(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 405
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 407
    new-instance v1, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;

    invoke-direct {v1, v0, p0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar$SavedState;-><init>(Landroid/os/Parcelable;Lcom/metamoji/nt/NtTextUnitInputStyleBar;)V

    return-object v1
.end method

.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 740
    instance-of p1, p2, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

    if-eqz p1, :cond_0

    .line 741
    check-cast p2, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->btnTextAlign_Tapped(Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;)V

    return-void

    .line 743
    :cond_0
    instance-of p1, p2, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    if-eqz p1, :cond_1

    .line 744
    check-cast p2, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->btnBulletedList_Tapped(Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;)V

    :cond_1
    return-void
.end method

.method public overrideAttributes(Lcom/metamoji/un/text/model/attr/Attributes;)Lcom/metamoji/un/text/model/attr/Attributes;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 459
    new-instance p1, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {p1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    move-object v1, p1

    goto :goto_0

    .line 462
    :cond_0
    instance-of v1, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    if-eqz v1, :cond_1

    .line 463
    new-instance v1, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    check-cast p1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-direct {v1, p1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>(Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    move-object p1, v1

    goto :goto_0

    .line 467
    :cond_1
    new-instance v1, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;

    invoke-direct {v1, p1}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    move-object p1, v0

    .line 470
    :goto_0
    iget-object v2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_modifiedFlag:Ljava/util/EnumSet;

    sget-object v3, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontName:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 472
    iget-object v2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontName:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 473
    iget-boolean v2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_isFontNameDefault:Z

    if-eqz v2, :cond_2

    .line 474
    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setFontName(Ljava/lang/String;)V

    goto :goto_1

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setFontName(Ljava/lang/String;)V

    .line 480
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_modifiedFlag:Ljava/util/EnumSet;

    sget-object v2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 482
    iget v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontSize:F

    cmpl-float v4, v0, v2

    if-lez v4, :cond_5

    .line 484
    iget-boolean v4, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_isFontSizeDefault:Z

    if-eqz v4, :cond_4

    .line 485
    invoke-interface {v1, v3}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setUseFontSize(Z)V

    goto :goto_2

    .line 487
    :cond_4
    invoke-interface {v1, v0}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setFontSize(F)V

    .line 490
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_modifiedFlag:Ljava/util/EnumSet;

    sget-object v4, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Color:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 492
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textColor:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 494
    iget-boolean v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_isTextColorDefault:Z

    if-eqz v0, :cond_6

    .line 495
    invoke-interface {v1, v3}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setUseColor(Z)V

    goto :goto_3

    .line 497
    :cond_6
    new-instance v0, Lcom/metamoji/un/text/model/ColorComponent;

    iget-object v4, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textColor:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(I)V

    invoke-interface {v1, v0}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setColor(Lcom/metamoji/un/text/model/ColorComponent;)V

    .line 500
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_modifiedFlag:Ljava/util/EnumSet;

    sget-object v4, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontWeight:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 501
    iget-boolean v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontBold:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x2bc

    .line 502
    invoke-interface {v1, v0}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setFontWeight(I)V

    goto :goto_4

    .line 504
    :cond_8
    invoke-interface {v1, v3}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setUseFontWeight(Z)V

    .line 506
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_modifiedFlag:Ljava/util/EnumSet;

    sget-object v4, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Italic:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    .line 507
    iget-boolean v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontItalic:Z

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setItalic(Z)V

    .line 509
    :cond_a
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_modifiedFlag:Ljava/util/EnumSet;

    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Underline:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 510
    iget-boolean p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontUnderline:Z

    invoke-interface {v1, p1}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setUnderline(Z)V

    .line 512
    :cond_b
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_modifiedFlag:Ljava/util/EnumSet;

    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Strikeout:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 513
    iget-boolean p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontStrikeThrough:Z

    invoke-interface {v1, p1}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setStrikeout(Z)V

    .line 515
    :cond_c
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_modifiedFlag:Ljava/util/EnumSet;

    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->BackgroundColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 517
    iget-boolean p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_useTextBackgroundColor:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textBackgroundColor:Ljava/lang/Integer;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/metamoji/ui/dialog/BackgroundColor;->isColorNone(I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 518
    :cond_d
    new-instance p1, Lcom/metamoji/un/text/model/ColorComponent;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v2, v0, v0, v0}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(FFFF)V

    invoke-interface {v1, p1}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setBackgroundColor(Lcom/metamoji/un/text/model/ColorComponent;)V

    .line 519
    invoke-interface {v1, v3}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setUseBackgroundColor(Z)V

    goto :goto_5

    .line 522
    :cond_e
    iget-boolean p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_useTextBackgroundColor:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textBackgroundColor:Ljava/lang/Integer;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/metamoji/ui/dialog/BackgroundColor;->isColorNone(I)Z

    move-result p1

    if-nez p1, :cond_f

    .line 523
    new-instance p1, Lcom/metamoji/un/text/model/ColorComponent;

    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(I)V

    invoke-interface {v1, p1}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setBackgroundColor(Lcom/metamoji/un/text/model/ColorComponent;)V

    const/4 p1, 0x1

    .line 524
    invoke-interface {v1, p1}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setUseBackgroundColor(Z)V

    .line 528
    :cond_f
    :goto_5
    check-cast v1, Lcom/metamoji/un/text/model/attr/Attributes;

    return-object v1
.end method

.method public resetButtonStyle()V
    .locals 3

    .line 302
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->TextParagraphList:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    .line 311
    iget-object v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textAlignBtn:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 303
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->tuisb_textalign:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 305
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_listBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 306
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_listBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    .line 311
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->tuisb_textalign_single:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 313
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_listBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 314
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_listBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public setFontBold(Z)V
    .locals 2

    .line 609
    iput-boolean p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontBold:Z

    .line 611
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_boldBtn:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 612
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_boldBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 613
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_boldBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setFontItalic(Z)V
    .locals 2

    .line 619
    iput-boolean p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontItalic:Z

    .line 621
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_italicBtn:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 622
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_italicBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 623
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_italicBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setFontName(Ljava/lang/String;Z)V
    .locals 3

    .line 563
    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontName:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 565
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_selectedStateTextKind:Ljava/util/EnumSet;

    sget-object v1, Lcom/metamoji/un/text/model/TextKind;->Stroke:Lcom/metamoji/un/text/model/TextKind;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 571
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/text/FontUtils;->getRenderingFontInfo(Ljava/lang/String;)Lcom/metamoji/un/text/FontInfo;

    move-result-object p1

    .line 572
    iget-object v0, p1, Lcom/metamoji/un/text/FontInfo;->dispName:Ljava/lang/String;

    .line 573
    iget-object v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontNameBtn:Lcom/metamoji/ui/ImageButtonWithText;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/metamoji/un/text/FontUtils;->createTypeface(Lcom/metamoji/un/text/FontInfo;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/ImageButtonWithText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 574
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontNameBtn:Lcom/metamoji/ui/ImageButtonWithText;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/ImageButtonWithText;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 567
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontNameBtn:Lcom/metamoji/ui/ImageButtonWithText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/ImageButtonWithText;->setText(Ljava/lang/String;)V

    .line 577
    :goto_1
    iput-boolean p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_isFontNameDefault:Z

    return-void
.end method

.method public setFontSize(FZ)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    .line 587
    iput v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontSize:F

    goto :goto_0

    .line 589
    :cond_0
    iput p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontSize:F

    const/high16 v1, 0x40800000    # 4.0f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    .line 591
    iput v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontSize:F

    goto :goto_0

    :cond_1
    const/high16 v1, 0x42c00000    # 96.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_2

    .line 593
    iput v1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontSize:F

    .line 596
    :cond_2
    :goto_0
    iput-boolean p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_isFontSizeDefault:Z

    .line 598
    iget p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontSize:F

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_3

    .line 599
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontSizeBtn:Lcom/metamoji/ui/ImageButtonWithText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/ImageButtonWithText;->setText(Ljava/lang/String;)V

    return-void

    .line 601
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    .line 602
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontSizeBtn:Lcom/metamoji/ui/ImageButtonWithText;

    const-string v1, ".0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    :cond_4
    invoke-virtual {v0, p2}, Lcom/metamoji/ui/ImageButtonWithText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setFontStrikeThrough(Z)V
    .locals 2

    .line 639
    iput-boolean p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontStrikeThrough:Z

    .line 641
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_strikeoutBtn:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 642
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_strikeoutBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 643
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_strikeoutBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setFontUnderline(Z)V
    .locals 2

    .line 629
    iput-boolean p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_fontUnderline:Z

    .line 631
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_underlineBtn:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 632
    iget-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_underlineBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 633
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_underlineBtn:Landroid/widget/ToggleButton;

    invoke-virtual {p1, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setSelectedStateTextKind(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/TextKind;",
            ">;)V"
        }
    .end annotation

    .line 1187
    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_selectedStateTextKind:Ljava/util/EnumSet;

    .line 1189
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->checkControlEnable()V

    return-void
.end method

.method setSelectedStateTextKindValue(I)V
    .locals 3

    .line 1264
    const-class v0, Lcom/metamoji/un/text/model/TextKind;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_selectedStateTextKind:Ljava/util/EnumSet;

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 1266
    sget-object v1, Lcom/metamoji/un/text/model/TextKind;->String:Lcom/metamoji/un/text/model/TextKind;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-ne v0, p1, :cond_1

    .line 1268
    iget-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_selectedStateTextKind:Ljava/util/EnumSet;

    sget-object v0, Lcom/metamoji/un/text/model/TextKind;->Stroke:Lcom/metamoji/un/text/model/TextKind;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setTextBackgroundColor(Ljava/lang/Integer;Z)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textBackgroundColor:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 674
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 675
    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textBackgroundColor:Ljava/lang/Integer;

    .line 678
    :cond_0
    iput-boolean p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_useTextBackgroundColor:Z

    .line 680
    invoke-direct {p0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setTextColorButtonColor()V

    return-void
.end method

.method public setTextColor(Ljava/lang/Integer;Z)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textColor:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 654
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 656
    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_textColor:Ljava/lang/Integer;

    .line 660
    :cond_0
    iput-boolean p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_isTextColorDefault:Z

    .line 662
    invoke-direct {p0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setTextColorButtonColor()V

    return-void
.end method

.method public setUnitController(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_unitController:Lcom/metamoji/un/text/UnTextUnit;

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 448
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 450
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtEditorWindowController;->onTextUnitInputStyleBarVisibilityChanged(Z)V

    return-void
.end method

.method public updateDefaultValue(Lcom/metamoji/un/text/model/UnitStyles;)V
    .locals 2

    .line 533
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_isFontNameDefault:Z

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setFontName(Ljava/lang/String;Z)V

    .line 535
    :cond_0
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_isFontSizeDefault:Z

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setFontSize(FZ)V

    .line 537
    :cond_1
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->_isTextColorDefault:Z

    if-eqz v0, :cond_2

    .line 538
    iget-object p1, p1, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    invoke-virtual {p0, p1, v1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setTextColor(Ljava/lang/Integer;Z)V

    :cond_2
    return-void
.end method
