.class public Lcom/metamoji/ui/dialog/DocumentSettings2;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "DocumentSettings2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;,
        Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static TAG:Ljava/lang/String; = "DocumentSettings2"


# instance fields
.field private _btnPassword:Lcom/metamoji/ui/common/UiButton;

.field private _btnTextUnit:Lcom/metamoji/ui/common/UiButton;

.field private _chkCoverPrt:Lcom/metamoji/ui/common/UiSwitch;

.field private _create:Ljava/lang/String;

.field private _dlgType:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

.field private _document:Lcom/metamoji/nt/NtDocument;

.field private _isShareTemplateSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field private _isVoiceGroupVisible:Z

.field private _param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

.field private _password:Ljava/lang/String;

.field private _passwordHash:Ljava/lang/String;

.field _shareTemplateDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _shareTemplateSettingButton:Lcom/metamoji/ui/common/UiButton;

.field private _tagIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _title:Ljava/lang/String;

.field _titleRuleBtn:Lcom/metamoji/ui/common/UiButton;

.field private _txtTitle:Landroid/widget/EditText;

.field private _unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

.field private _update:Ljava/lang/String;

.field private _useNoteSettingsForText:Z


# direct methods
.method static bridge synthetic -$$Nest$fget_btnTextUnit(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/ui/common/UiButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_btnTextUnit:Lcom/metamoji/ui/common/UiButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_chkCoverPrt(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/ui/common/UiSwitch;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_chkCoverPrt:Lcom/metamoji/ui/common/UiSwitch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_dlgType(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_dlgType:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_document(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/nt/NtDocument;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_document:Lcom/metamoji/nt/NtDocument;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_param(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_passwordHash(Lcom/metamoji/ui/dialog/DocumentSettings2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_passwordHash:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_unitStyles(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/un/text/model/UnitStyles;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_useNoteSettingsForText(Lcom/metamoji/ui/dialog/DocumentSettings2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_useNoteSettingsForText:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fput_unitStyles(Lcom/metamoji/ui/dialog/DocumentSettings2;Lcom/metamoji/un/text/model/UnitStyles;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_useNoteSettingsForText(Lcom/metamoji/ui/dialog/DocumentSettings2;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_useNoteSettingsForText:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 217
    sget-object v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->NoteSettings:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;)V
    .locals 1

    .line 221
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_dlgType:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    .line 223
    new-instance p1, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    invoke-direct {p1}, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p1, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->coverpage:Z

    .line 225
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->coverprint:Z

    return-void
.end method

.method private getDlgTitleResId()I
    .locals 2

    .line 957
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_dlgType:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 964
    sget v0, Lcom/metamoji/noteanytime/R$string;->DocumentSetting_Note_Setting:I

    return v0

    .line 959
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->Editor_NoteTemplate_Create:I

    return v0

    .line 961
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$string;->Editor_NoteTemplate_Setting:I

    return v0
.end method

.method private getTagIds(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 953
    const-string v0, "TagIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method private isEnablePassword()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$onCreateView$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 282
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "actionId = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " event = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-nez p2, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "onEditorAction"

    invoke-static {p1, p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 283
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p1, 0x42

    if-ne p0, p1, :cond_1

    .line 284
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private setPasswordSubTitle(Lcom/metamoji/ui/common/UiButton;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 944
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 945
    sget p2, Lcom/metamoji/noteanytime/R$string;->DocumentSetting_Password_Exist:I

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 947
    :cond_0
    sget p2, Lcom/metamoji/noteanytime/R$string;->DocumentSetting_Password_None:I

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getDocumentTitle()Ljava/lang/String;
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_title:Ljava/lang/String;

    return-object v0
.end method

.method public getFooter()Ljava/lang/String;
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->footer:Ljava/lang/String;

    return-object v0
.end method

.method public getFrontCover()Z
    .locals 1

    .line 895
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->coverpage:Z

    return v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getNoFrontCoverOnPrinting()Z
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->coverprint:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_password:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordHash()Ljava/lang/String;
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_passwordHash:Ljava/lang/String;

    return-object v0
.end method

.method public getShareTemplateDic()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1100
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_isShareTemplateSwitch:Lcom/metamoji/ui/common/UiSwitch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_shareTemplateDic:Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTagIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_tagIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getThumbnailType()Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbUsed:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->User:Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    return-object v0

    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->Auto:Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    return-object v0
.end method

.method public getThumbnailUri()Ljava/lang/String;
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbUri:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUsed()Z
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbUsed:Z

    return v0
.end method

.method public getTitleRule()Ljava/lang/String;
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->titleRule:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    return-object v0
.end method

.method public getUseNoteSettingsForText()Z
    .locals 1

    .line 916
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_useNoteSettingsForText:Z

    return v0
.end method

.method getUserArrayFromTemplateDic(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1071
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_shareTemplateDic:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 1073
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p1
.end method

.method handleIsShareTemplateSwitch()V
    .locals 2

    .line 995
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_shareTemplateSettingButton:Lcom/metamoji/ui/common/UiButton;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_isShareTemplateSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    return-void
.end method

.method handleShareTemplateSettingButtonTap()V
    .locals 10

    .line 1007
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1008
    sget v0, Lcom/metamoji/noteanytime/R$string;->AnytimeNotify_Dialog_Msg_Offline:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->ManageParticipantsDlg_Role_Title:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_shareTemplateDic:Ljava/util/Map;

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->validateShareTemplateDic(Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1015
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->ManageParticipantsDlg_Role_Title:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1019
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_shareTemplateDic:Ljava/util/Map;

    const-string/jumbo v1, "roomType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 1020
    const-string v0, "presenterArray"

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getUserArrayFromTemplateDic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1021
    const-string/jumbo v0, "speakerArray"

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getUserArrayFromTemplateDic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1022
    const-string/jumbo v0, "visitorArray"

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getUserArrayFromTemplateDic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 1024
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->getLastSelectedItem()Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    move-result-object v0

    .line 1025
    invoke-interface {v0}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->driveId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1027
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1028
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v8, v0

    .line 1031
    invoke-static {v8}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserClassNumberAndLoginNameMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 1034
    new-instance v1, Lcom/metamoji/ui/dialog/DocumentSettings2$14;

    move-object v3, p0

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/metamoji/ui/dialog/DocumentSettings2$14;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings2;Lcom/metamoji/ui/dialog/DocumentSettings2;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    .line 1062
    new-instance v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDCLogin;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForDCLogin;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 1063
    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForDCLogin;->doInBackground()V

    return-void
.end method

.method public isIncludeVoiceFile()Z
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->isIncludeVoiceFile:Z

    return v0
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 798
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    if-eqz p3, :cond_0

    .line 232
    const-string v0, "PasswordHash"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_passwordHash:Ljava/lang/String;

    .line 233
    invoke-direct {p0, p3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getTagIds(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_tagIds:Ljava/util/ArrayList;

    .line 234
    const-string v0, "DocSetParam"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    .line 235
    const-string v0, "UseNoteSettingsForText"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_useNoteSettingsForText:Z

    .line 236
    const-string v0, "UnitStyles"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/UnitStyles;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    .line 237
    invoke-static {}, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->values()[Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    move-result-object v0

    const-string v1, "DialogType"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_dlgType:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    .line 238
    const-string v0, "IsVoiceGroupVisible"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_isVoiceGroupVisible:Z

    .line 241
    :cond_0
    sget-object v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->NoteSettings:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_dlgType:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 242
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_document:Lcom/metamoji/nt/NtDocument;

    if-nez v0, :cond_1

    return-object v2

    .line 248
    :cond_1
    sget-object v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->NoteSettings:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_dlgType:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    if-ne v0, v1, :cond_2

    .line 252
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 253
    invoke-static {v0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 254
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 258
    iget-object v3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocument;->getDocumentCreateTime()Ljava/util/Date;

    move-result-object v3

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_create:Ljava/lang/String;

    .line 262
    iget-object v3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocument;->getDocumentUpdateTime()Ljava/util/Date;

    move-result-object v3

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_update:Ljava/lang/String;

    .line 266
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_doc_settings2:I

    iput v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->mViewId:I

    .line 267
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getDlgTitleResId()I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->mTitleId:I

    .line 269
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v2

    .line 279
    :cond_3
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set2_txt_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_txtTitle:Landroid/widget/EditText;

    .line 281
    new-instance p3, Lcom/metamoji/ui/dialog/DocumentSettings2$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/metamoji/ui/dialog/DocumentSettings2$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 290
    sget-object p2, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->NoteSettings:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_dlgType:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    const/16 v0, 0x8

    if-ne p2, p3, :cond_6

    .line 292
    sget p2, Lcom/metamoji/noteanytime/R$string;->Cabinet_NoTitle:I

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 293
    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_txtTitle:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 296
    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_title:Ljava/lang/String;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_5

    .line 297
    :cond_4
    iput-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_title:Ljava/lang/String;

    .line 299
    :cond_5
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_txtTitle:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_title:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 303
    :cond_6
    sget p2, Lcom/metamoji/noteanytime/R$id;->titleGroup:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 304
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 308
    :goto_0
    sget-object p2, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->NoteSettings:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_dlgType:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    const/4 v1, 0x0

    if-eq p2, p3, :cond_7

    .line 309
    sget p2, Lcom/metamoji/noteanytime/R$id;->titleRuleBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_titleRuleBtn:Lcom/metamoji/ui/common/UiButton;

    .line 310
    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 312
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_titleRuleBtn:Lcom/metamoji/ui/common/UiButton;

    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iget-object p3, p3, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->titleRule:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 313
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_titleRuleBtn:Lcom/metamoji/ui/common/UiButton;

    new-instance p3, Lcom/metamoji/ui/dialog/DocumentSettings2$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/DocumentSettings2$1;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings2;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    :cond_7
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set2_btn_password:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_btnPassword:Lcom/metamoji/ui/common/UiButton;

    .line 353
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_document:Lcom/metamoji/nt/NtDocument;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 354
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 355
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_passwordHash:Ljava/lang/String;

    if-nez p2, :cond_8

    move p2, v1

    goto :goto_1

    :cond_8
    const/4 p2, 0x1

    .line 363
    :goto_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p3

    if-nez p3, :cond_9

    if-eqz p2, :cond_9

    .line 365
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p3

    .line 366
    sget-object v2, Lcom/metamoji/nt/NtFeature;->AppStudentSetPassword:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p3, v2}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p3

    if-nez p3, :cond_9

    move p2, v1

    :cond_9
    if-eqz p2, :cond_a

    .line 373
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->isEnablePassword()Z

    move-result p2

    .line 397
    :cond_a
    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_btnPassword:Lcom/metamoji/ui/common/UiButton;

    if-eqz p2, :cond_b

    .line 378
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_passwordHash:Ljava/lang/String;

    invoke-direct {p0, p3, p2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setPasswordSubTitle(Lcom/metamoji/ui/common/UiButton;Ljava/lang/String;)V

    .line 381
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_btnPassword:Lcom/metamoji/ui/common/UiButton;

    new-instance p3, Lcom/metamoji/ui/dialog/DocumentSettings2$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/DocumentSettings2$2;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings2;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 397
    :cond_b
    invoke-virtual {p3, v0}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 401
    :goto_2
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set2_btn_header:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    .line 403
    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iget-object p3, p3, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->header:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 404
    new-instance p3, Lcom/metamoji/ui/dialog/DocumentSettings2$3;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/DocumentSettings2$3;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings2;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set2_btn_footer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    .line 442
    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iget-object p3, p3, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->footer:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 443
    new-instance p3, Lcom/metamoji/ui/dialog/DocumentSettings2$4;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/DocumentSettings2$4;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings2;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iget-boolean p2, p2, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbUsed:Z

    if-eqz p2, :cond_d

    sget-object p2, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->NoteSettings:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_dlgType:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    if-ne p2, p3, :cond_d

    .line 482
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set2_group_thumb:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 484
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 487
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set2_btn_thumb:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    .line 491
    sget p3, Lcom/metamoji/noteanytime/R$string;->ThumbnailSetting_NotSpecify:I

    invoke-virtual {p0, p3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 492
    new-instance v2, Lcom/metamoji/ui/dialog/DocumentSettings2$5;

    invoke-direct {v2, p0, p1, p3}, Lcom/metamoji/ui/dialog/DocumentSettings2$5;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings2;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    sget v2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set2_img_thumb:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 551
    iget-object v3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iget-object v3, v3, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbImg:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_c

    .line 552
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iget-object p2, p2, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbImg:Landroid/graphics/Bitmap;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 554
    :cond_c
    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 559
    :cond_d
    :goto_3
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set2_chk_firstpage:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    .line 561
    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iget-boolean p3, p3, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->coverpage:Z

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 562
    new-instance p3, Lcom/metamoji/ui/dialog/DocumentSettings2$6;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/DocumentSettings2$6;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings2;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 575
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p3

    if-eqz p3, :cond_e

    .line 576
    invoke-virtual {p3}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result p3

    if-eqz p3, :cond_e

    .line 577
    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiSwitch;->setEnabled(Z)V

    .line 582
    :cond_e
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set2_cover_prt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 584
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 586
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set2_chk_cover_prt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_chkCoverPrt:Lcom/metamoji/ui/common/UiSwitch;

    .line 588
    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iget-boolean p3, p3, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->coverprint:Z

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 589
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_chkCoverPrt:Lcom/metamoji/ui/common/UiSwitch;

    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iget-boolean p3, p3, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->coverpage:Z

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setEnabled(Z)V

    .line 590
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_chkCoverPrt:Lcom/metamoji/ui/common/UiSwitch;

    new-instance p3, Lcom/metamoji/ui/dialog/DocumentSettings2$7;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/DocumentSettings2$7;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings2;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 598
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set2_chk_use_system:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    .line 600
    iget-boolean p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_useNoteSettingsForText:Z

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 601
    new-instance p3, Lcom/metamoji/ui/dialog/DocumentSettings2$8;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/DocumentSettings2$8;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings2;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 612
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set2_btn_textunit_def:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_btnTextUnit:Lcom/metamoji/ui/common/UiButton;

    .line 614
    iget-boolean p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_useNoteSettingsForText:Z

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 615
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_btnTextUnit:Lcom/metamoji/ui/common/UiButton;

    new-instance p3, Lcom/metamoji/ui/dialog/DocumentSettings2$9;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/DocumentSettings2$9;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings2;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    sget-object p2, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->NoteSettings:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_dlgType:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    if-ne p2, p3, :cond_f

    .line 665
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set2_lbl_create:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiTextView;

    .line 667
    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_create:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set2_lbl_update:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiTextView;

    .line 672
    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_update:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 676
    :cond_f
    sget p2, Lcom/metamoji/noteanytime/R$id;->noteInfoGroup:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 677
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 681
    :goto_4
    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_isVoiceGroupVisible:Z

    if-eqz p2, :cond_10

    .line 682
    sget p2, Lcom/metamoji/noteanytime/R$id;->voiceGroup:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 683
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 685
    sget p2, Lcom/metamoji/noteanytime/R$id;->isIncludeVoiceFileSwitch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    .line 686
    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iget-boolean p3, p3, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->isIncludeVoiceFile:Z

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 687
    new-instance p3, Lcom/metamoji/ui/dialog/DocumentSettings2$10;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/DocumentSettings2$10;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings2;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 738
    :cond_10
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 3

    .line 761
    sget-object v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->NoteSettings:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_dlgType:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    if-ne v0, v1, :cond_4

    .line 762
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_txtTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 763
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 765
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_NoTitle:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_title:Ljava/lang/String;

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_title:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getValidDocumentTitleError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 769
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 p1, 0x0

    .line 771
    invoke-static {v0, p1, p1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 775
    :cond_2
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    .line 777
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 780
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 781
    sget-object v1, Lcom/metamoji/ui/dialog/DocumentSettings2;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 782
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/dialog/DocumentSettings2$13;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/ui/dialog/DocumentSettings2$13;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings2;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    .line 791
    :cond_4
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 745
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 746
    sget-object v0, Lcom/metamoji/ui/dialog/DocumentSettings2;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 747
    const-string v0, "PasswordHash"

    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_passwordHash:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v0, "TagIds"

    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_tagIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 749
    const-string v0, "DocSetParam"

    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 750
    const-string v0, "UseNoteSettingsForText"

    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_useNoteSettingsForText:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 751
    const-string v0, "UnitStyles"

    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 752
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_dlgType:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->ordinal()I

    move-result v0

    const-string v1, "DialogType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 753
    const-string v0, "IsVoiceGroupVisible"

    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_isVoiceGroupVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 754
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_isShareTemplateSwitch:Lcom/metamoji/ui/common/UiSwitch;

    if-eqz v0, :cond_0

    .line 755
    const-string v1, "IsShareTemplateSwitch"

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setDocumentTitle(Ljava/lang/String;)V
    .locals 0

    .line 815
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_title:Ljava/lang/String;

    return-void
.end method

.method public setFooter(Ljava/lang/String;)V
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iput-object p1, v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->footer:Ljava/lang/String;

    return-void
.end method

.method public setFrontCover(Z)V
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iput-boolean p1, v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->coverpage:Z

    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iput-object p1, v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->header:Ljava/lang/String;

    return-void
.end method

.method public setIsVoiceGroupVisible(Z)V
    .locals 0

    .line 981
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_isVoiceGroupVisible:Z

    return-void
.end method

.method public setPasswordHash(Ljava/lang/String;)V
    .locals 0

    .line 830
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_passwordHash:Ljava/lang/String;

    return-void
.end method

.method public setPrintCover(Z)V
    .locals 1

    .line 911
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iput-boolean p1, v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->coverprint:Z

    return-void
.end method

.method public setReturnPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 803
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_password:Ljava/lang/String;

    .line 804
    iput-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_passwordHash:Ljava/lang/String;

    .line 805
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_btnPassword:Lcom/metamoji/ui/common/UiButton;

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setPasswordSubTitle(Lcom/metamoji/ui/common/UiButton;Ljava/lang/String;)V

    return-void
.end method

.method public setShareTempateSetting(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1085
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 1086
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 1087
    iget-object v3, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 1090
    new-instance v1, Lcom/metamoji/ui/dialog/DocumentSettings2$15;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/ui/dialog/DocumentSettings2$15;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings2;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, v2, Lcom/metamoji/ui/dialog/DocumentSettings2;->_shareTemplateDic:Ljava/util/Map;

    return-void
.end method

.method public setShareTemplateDic(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1110
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_shareTemplateDic:Ljava/util/Map;

    return-void
.end method

.method public setThumbnail(Lcom/metamoji/cm/Blob;)V
    .locals 3

    .line 889
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    const/16 v1, 0x40

    invoke-static {p1}, Lcom/metamoji/cm/ImageUtils;->getBitmapSizeFromBlob(Lcom/metamoji/cm/Blob;)Lcom/metamoji/cm/Size;

    move-result-object v2

    invoke-static {p1, v1, v1, v2}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromBlob(Lcom/metamoji/cm/Blob;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbImg:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setThumbnailType(Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;)V
    .locals 2

    .line 878
    sget-object v0, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->Auto:Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    .line 883
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 880
    iput-boolean p1, v1, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbUsed:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 883
    iput-boolean p1, v1, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbUsed:Z

    return-void
.end method

.method public setTitleRule(Ljava/lang/String;)V
    .locals 2

    .line 970
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 971
    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_NoTitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 972
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    iput-object p1, v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->titleRule:Ljava/lang/String;

    return-void

    .line 973
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_param:Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    const-string v0, ""

    iput-object v0, p1, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->titleRule:Ljava/lang/String;

    return-void
.end method

.method public setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;)V
    .locals 0

    .line 929
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    return-void
.end method

.method public setUseNoteSettingsForText(Z)V
    .locals 0

    .line 921
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2;->_useNoteSettingsForText:Z

    return-void
.end method
