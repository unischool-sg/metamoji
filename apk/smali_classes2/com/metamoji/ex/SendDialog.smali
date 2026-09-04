.class public Lcom/metamoji/ex/SendDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "SendDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ex/SendDialog$Type;,
        Lcom/metamoji/ex/SendDialog$User;,
        Lcom/metamoji/ex/SendDialog$Page;
    }
.end annotation


# instance fields
.field private _command:Lcom/metamoji/ui/PopupCommand;

.field private _currentPageNum:I

.field private _execBtn:Lcom/metamoji/ui/common/UiButton;

.field private _fromPageNum:I

.field private _hasFrontCover:Z

.field private _hasSoundUnit:Z

.field private _hasTicket:Z

.field private _includeVoiceFilesGroup:Landroid/view/View;

.field private _includeVoiceFilesSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field private _maxPageNum:I

.field private _mediaGroup:Landroid/view/View;

.field private _menu:Lcom/metamoji/ui/CustomMenuView;

.field private _mergePDFSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field private _mergePDFSwitchChecked:Z

.field private _mergePDFView:Landroid/view/View;

.field private _minPageNum:I

.field private _noFrontCoverOnPrinting:Z

.field private _onIncludeVoiceFilesSwitchChanged:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private _onPageGroupCheckChanged:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private _onPageNumRangeFromBtnClicked:Landroid/view/View$OnClickListener;

.field private _onPageNumRangeToBtnClicked:Landroid/view/View$OnClickListener;

.field private _onTypeGroupCheckChanged:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private _onUserGroupCheckChanged:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private _pageAllBtn:Lcom/metamoji/ui/common/UiRadioButton;

.field private _pageCount:I

.field private _pageCurrentBtn:Lcom/metamoji/ui/common/UiRadioButton;

.field private _pageGroup:Landroid/view/View;

.field private _pageNumRangeBtn:Lcom/metamoji/ui/common/UiRadioButton;

.field private _pageNumRangeGroup:Landroid/view/View;

.field private _pageRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

.field private _pageSelectedAreaBtn:Landroid/view/View;

.field private _selectedUserDicList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private _shareVoiceFilesGroup:Landroid/view/View;

.field private _shareVoiceFilesSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field private _shareVoiceFilesText:Lcom/metamoji/ui/common/UiTextView;

.field private _toPageNum:I

.field private _totalPageCount:I

.field private _totalUserCount:I

.field private _type:Lcom/metamoji/ex/SendDialog$Type;

.field private _typeRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

.field private _userAllBtn:Lcom/metamoji/ui/common/UiRadioButton;

.field private _userCurrentBtn:Lcom/metamoji/ui/common/UiRadioButton;

.field private _userDicList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private _userGroup:Landroid/view/View;

.field private _userRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

.field private _userRadioGroupCurrentButton:I

.field private _userSelectedBtn:Lcom/metamoji/ui/common/UiRadioButton;

.field private _userSendTypeText:Lcom/metamoji/ui/common/UiTextView;

.field private _userSendTypeView:Landroid/view/View;

.field private _userToalPageCountText:Lcom/metamoji/ui/common/UiTextView;

.field private _userToalPageCountView:Landroid/view/View;

.field public allInOnePDF:Z

.field public fromPageIndex:I

.field public sendUserDicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public textEnabled:Z

.field public toPageIndex:I


# direct methods
.method public static synthetic $r8$lambda$3pb01RyJwyp1NdRbkRSTSJ48FNI(Lcom/metamoji/ex/SendDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ex/SendDialog;->lambda$onCreateView$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZIFIRxQi_ysqJ9hD3M_V-QMeoz4(Lcom/metamoji/ex/SendDialog;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ex/SendDialog;->lambda$onCreateView$2(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$j0YVIkoTUgQbkRJb93FEB_3wN-g(Lcom/metamoji/ex/SendDialog;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ex/SendDialog;->lambda$onCreateView$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fget_fromPageNum(Lcom/metamoji/ex/SendDialog;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ex/SendDialog;->_fromPageNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_hasSoundUnit(Lcom/metamoji/ex/SendDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ex/SendDialog;->_hasSoundUnit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_hasTicket(Lcom/metamoji/ex/SendDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ex/SendDialog;->_hasTicket:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_maxPageNum(Lcom/metamoji/ex/SendDialog;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ex/SendDialog;->_maxPageNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_mediaGroup(Lcom/metamoji/ex/SendDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ex/SendDialog;->_mediaGroup:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_minPageNum(Lcom/metamoji/ex/SendDialog;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ex/SendDialog;->_minPageNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_pageGroup(Lcom/metamoji/ex/SendDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ex/SendDialog;->_pageGroup:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_pageNumRangeGroup(Lcom/metamoji/ex/SendDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ex/SendDialog;->_pageNumRangeGroup:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_shareVoiceFilesSwitch(Lcom/metamoji/ex/SendDialog;)Lcom/metamoji/ui/common/UiSwitch;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ex/SendDialog;->_shareVoiceFilesSwitch:Lcom/metamoji/ui/common/UiSwitch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_shareVoiceFilesText(Lcom/metamoji/ex/SendDialog;)Lcom/metamoji/ui/common/UiTextView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ex/SendDialog;->_shareVoiceFilesText:Lcom/metamoji/ui/common/UiTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_toPageNum(Lcom/metamoji/ex/SendDialog;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ex/SendDialog;->_toPageNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_userDicList(Lcom/metamoji/ex/SendDialog;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ex/SendDialog;->_userDicList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_userGroup(Lcom/metamoji/ex/SendDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ex/SendDialog;->_userGroup:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_userRadioGroup(Lcom/metamoji/ex/SendDialog;)Lcom/metamoji/ui/common/UiRadioGroup;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ex/SendDialog;->_userRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_fromPageNum(Lcom/metamoji/ex/SendDialog;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ex/SendDialog;->_fromPageNum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_toPageNum(Lcom/metamoji/ex/SendDialog;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ex/SendDialog;->_toPageNum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_type(Lcom/metamoji/ex/SendDialog;Lcom/metamoji/ex/SendDialog$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ex/SendDialog;->_type:Lcom/metamoji/ex/SendDialog$Type;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_userRadioGroupCurrentButton(Lcom/metamoji/ex/SendDialog;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ex/SendDialog;->_userRadioGroupCurrentButton:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mexecBtnClicked(Lcom/metamoji/ex/SendDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ex/SendDialog;->execBtnClicked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTypeJpegBtnCheckChanged(Lcom/metamoji/ex/SendDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ex/SendDialog;->onTypeJpegBtnCheckChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTypeNoteAnytimeBtnCheckChanged(Lcom/metamoji/ex/SendDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ex/SendDialog;->onTypeNoteAnytimeBtnCheckChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTypePdfBtnCheckChanged(Lcom/metamoji/ex/SendDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ex/SendDialog;->onTypePdfBtnCheckChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTypeTextBtnCheckChanged(Lcom/metamoji/ex/SendDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ex/SendDialog;->onTypeTextBtnCheckChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTypeTextFileBtnCheckChanged(Lcom/metamoji/ex/SendDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ex/SendDialog;->onTypeTextFileBtnCheckChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowActionMenu(Lcom/metamoji/ex/SendDialog;Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/ex/SendDialog;->showActionMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateView(Lcom/metamoji/ex/SendDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ex/SendDialog;->updateView()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 169
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/metamoji/ex/SendDialog;->_type:Lcom/metamoji/ex/SendDialog$Type;

    const/4 v1, 0x0

    .line 110
    iput-boolean v1, p0, Lcom/metamoji/ex/SendDialog;->allInOnePDF:Z

    .line 115
    iput-object v0, p0, Lcom/metamoji/ex/SendDialog;->_userDicList:Ljava/util/ArrayList;

    .line 116
    iput-object v0, p0, Lcom/metamoji/ex/SendDialog;->_selectedUserDicList:Ljava/util/ArrayList;

    .line 138
    iput v1, p0, Lcom/metamoji/ex/SendDialog;->_totalPageCount:I

    .line 139
    iput v1, p0, Lcom/metamoji/ex/SendDialog;->_totalUserCount:I

    .line 731
    new-instance v0, Lcom/metamoji/ex/SendDialog$3;

    invoke-direct {v0, p0}, Lcom/metamoji/ex/SendDialog$3;-><init>(Lcom/metamoji/ex/SendDialog;)V

    iput-object v0, p0, Lcom/metamoji/ex/SendDialog;->_onTypeGroupCheckChanged:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 828
    new-instance v0, Lcom/metamoji/ex/SendDialog$4;

    invoke-direct {v0, p0}, Lcom/metamoji/ex/SendDialog$4;-><init>(Lcom/metamoji/ex/SendDialog;)V

    iput-object v0, p0, Lcom/metamoji/ex/SendDialog;->_onPageGroupCheckChanged:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 844
    new-instance v0, Lcom/metamoji/ex/SendDialog$5;

    invoke-direct {v0, p0}, Lcom/metamoji/ex/SendDialog$5;-><init>(Lcom/metamoji/ex/SendDialog;)V

    iput-object v0, p0, Lcom/metamoji/ex/SendDialog;->_onPageNumRangeFromBtnClicked:Landroid/view/View$OnClickListener;

    .line 872
    new-instance v0, Lcom/metamoji/ex/SendDialog$6;

    invoke-direct {v0, p0}, Lcom/metamoji/ex/SendDialog$6;-><init>(Lcom/metamoji/ex/SendDialog;)V

    iput-object v0, p0, Lcom/metamoji/ex/SendDialog;->_onPageNumRangeToBtnClicked:Landroid/view/View$OnClickListener;

    .line 900
    new-instance v0, Lcom/metamoji/ex/SendDialog$7;

    invoke-direct {v0, p0}, Lcom/metamoji/ex/SendDialog$7;-><init>(Lcom/metamoji/ex/SendDialog;)V

    iput-object v0, p0, Lcom/metamoji/ex/SendDialog;->_onIncludeVoiceFilesSwitchChanged:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 907
    new-instance v0, Lcom/metamoji/ex/SendDialog$8;

    invoke-direct {v0, p0}, Lcom/metamoji/ex/SendDialog$8;-><init>(Lcom/metamoji/ex/SendDialog;)V

    iput-object v0, p0, Lcom/metamoji/ex/SendDialog;->_onUserGroupCheckChanged:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/PopupCommand;)V
    .locals 7

    .line 173
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/metamoji/ex/SendDialog;->_type:Lcom/metamoji/ex/SendDialog$Type;

    const/4 v1, 0x0

    .line 110
    iput-boolean v1, p0, Lcom/metamoji/ex/SendDialog;->allInOnePDF:Z

    .line 115
    iput-object v0, p0, Lcom/metamoji/ex/SendDialog;->_userDicList:Ljava/util/ArrayList;

    .line 116
    iput-object v0, p0, Lcom/metamoji/ex/SendDialog;->_selectedUserDicList:Ljava/util/ArrayList;

    .line 138
    iput v1, p0, Lcom/metamoji/ex/SendDialog;->_totalPageCount:I

    .line 139
    iput v1, p0, Lcom/metamoji/ex/SendDialog;->_totalUserCount:I

    .line 731
    new-instance v0, Lcom/metamoji/ex/SendDialog$3;

    invoke-direct {v0, p0}, Lcom/metamoji/ex/SendDialog$3;-><init>(Lcom/metamoji/ex/SendDialog;)V

    iput-object v0, p0, Lcom/metamoji/ex/SendDialog;->_onTypeGroupCheckChanged:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 828
    new-instance v0, Lcom/metamoji/ex/SendDialog$4;

    invoke-direct {v0, p0}, Lcom/metamoji/ex/SendDialog$4;-><init>(Lcom/metamoji/ex/SendDialog;)V

    iput-object v0, p0, Lcom/metamoji/ex/SendDialog;->_onPageGroupCheckChanged:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 844
    new-instance v0, Lcom/metamoji/ex/SendDialog$5;

    invoke-direct {v0, p0}, Lcom/metamoji/ex/SendDialog$5;-><init>(Lcom/metamoji/ex/SendDialog;)V

    iput-object v0, p0, Lcom/metamoji/ex/SendDialog;->_onPageNumRangeFromBtnClicked:Landroid/view/View$OnClickListener;

    .line 872
    new-instance v0, Lcom/metamoji/ex/SendDialog$6;

    invoke-direct {v0, p0}, Lcom/metamoji/ex/SendDialog$6;-><init>(Lcom/metamoji/ex/SendDialog;)V

    iput-object v0, p0, Lcom/metamoji/ex/SendDialog;->_onPageNumRangeToBtnClicked:Landroid/view/View$OnClickListener;

    .line 900
    new-instance v0, Lcom/metamoji/ex/SendDialog$7;

    invoke-direct {v0, p0}, Lcom/metamoji/ex/SendDialog$7;-><init>(Lcom/metamoji/ex/SendDialog;)V

    iput-object v0, p0, Lcom/metamoji/ex/SendDialog;->_onIncludeVoiceFilesSwitchChanged:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 907
    new-instance v0, Lcom/metamoji/ex/SendDialog$8;

    invoke-direct {v0, p0}, Lcom/metamoji/ex/SendDialog$8;-><init>(Lcom/metamoji/ex/SendDialog;)V

    iput-object v0, p0, Lcom/metamoji/ex/SendDialog;->_onUserGroupCheckChanged:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 174
    iput-object p1, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    .line 177
    sget p1, Lcom/metamoji/noteanytime/R$id;->userCurrentBtn:I

    iput p1, p0, Lcom/metamoji/ex/SendDialog;->_userRadioGroupCurrentButton:I

    .line 179
    iput-boolean v1, p0, Lcom/metamoji/ex/SendDialog;->_mergePDFSwitchChecked:Z

    .line 188
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 192
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 198
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 199
    sget v1, Lcom/metamoji/noteanytime/R$string;->School_ManageParticipantsDlg_Label_NoGroup:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ex/SendDialog;->_userDicList:Ljava/util/ArrayList;

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ex/SendDialog;->_selectedUserDicList:Ljava/util/ArrayList;

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 207
    check-cast v2, Ljava/util/Map;

    .line 208
    const-string v3, "group-id"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 209
    const-string v4, "group-name"

    invoke-static {v2, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 212
    const-string v5, "TEACHER"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 217
    :cond_1
    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v4, v0

    .line 222
    :cond_2
    const-string v5, "user-list"

    invoke-static {v2, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 225
    invoke-static {v2}, Lcom/metamoji/forSchool/ScSchoolUtils;->sortUserArray(Ljava/util/List;)V

    .line 227
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 229
    new-instance v6, Lcom/metamoji/ex/SendDialog$1;

    invoke-direct {v6, p0, v5, v4}, Lcom/metamoji/ex/SendDialog$1;-><init>(Lcom/metamoji/ex/SendDialog;Ljava/util/Map;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    .line 237
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 241
    :cond_3
    iget-object v5, p0, Lcom/metamoji/ex/SendDialog;->_userDicList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 247
    :cond_4
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog;->_userDicList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-void
.end method

.method private adjustsPageCheckedState(ILandroid/view/View;)V
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButton()I

    move-result v0

    if-ltz v0, :cond_0

    .line 816
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioButton;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 817
    invoke-virtual {p2}, Lcom/metamoji/ui/common/UiRadioButton;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 824
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog;->_pageRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    return-void

    .line 818
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_pageSelectedAreaBtn:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_pageSelectedAreaBtn:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 819
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog;->_pageRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    sget p2, Lcom/metamoji/noteanytime/R$id;->pageSelectedAreaBtn:I

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    return-void

    .line 821
    :cond_3
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_pageRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {p2, p1}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    return-void
.end method

.method private execBtnClicked()V
    .locals 6

    .line 926
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getSelectedPage()Lcom/metamoji/ex/SendDialog$Page;

    move-result-object v0

    .line 927
    sget-object v1, Lcom/metamoji/ex/SendDialog$Page;->All:Lcom/metamoji/ex/SendDialog$Page;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 928
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getSelectedType()Lcom/metamoji/ex/SendDialog$Type;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ex/SendDialog$Type;->Pdf:Lcom/metamoji/ex/SendDialog$Type;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/ex/SendDialog;->_hasFrontCover:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/ex/SendDialog;->_noFrontCoverOnPrinting:Z

    if-eqz v0, :cond_0

    .line 931
    iput v3, p0, Lcom/metamoji/ex/SendDialog;->fromPageIndex:I

    goto :goto_0

    .line 933
    :cond_0
    iput v2, p0, Lcom/metamoji/ex/SendDialog;->fromPageIndex:I

    .line 935
    :goto_0
    iget v0, p0, Lcom/metamoji/ex/SendDialog;->_pageCount:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/metamoji/ex/SendDialog;->toPageIndex:I

    goto :goto_1

    .line 936
    :cond_1
    sget-object v1, Lcom/metamoji/ex/SendDialog$Page;->Current:Lcom/metamoji/ex/SendDialog$Page;

    if-ne v0, v1, :cond_2

    .line 937
    iget v0, p0, Lcom/metamoji/ex/SendDialog;->_currentPageNum:I

    iput v0, p0, Lcom/metamoji/ex/SendDialog;->toPageIndex:I

    iput v0, p0, Lcom/metamoji/ex/SendDialog;->fromPageIndex:I

    goto :goto_1

    .line 940
    :cond_2
    iget v0, p0, Lcom/metamoji/ex/SendDialog;->_fromPageNum:I

    iput v0, p0, Lcom/metamoji/ex/SendDialog;->fromPageIndex:I

    .line 941
    iget v1, p0, Lcom/metamoji/ex/SendDialog;->_toPageNum:I

    iput v1, p0, Lcom/metamoji/ex/SendDialog;->toPageIndex:I

    .line 942
    iget-boolean v4, p0, Lcom/metamoji/ex/SendDialog;->_hasFrontCover:Z

    if-nez v4, :cond_3

    sub-int/2addr v0, v3

    .line 943
    iput v0, p0, Lcom/metamoji/ex/SendDialog;->fromPageIndex:I

    sub-int/2addr v1, v3

    .line 944
    iput v1, p0, Lcom/metamoji/ex/SendDialog;->toPageIndex:I

    .line 949
    :cond_3
    :goto_1
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 950
    sget-object v1, Lcom/metamoji/ui/PopupCommand;->SENDWINDOW_PRINT:Lcom/metamoji/ui/PopupCommand;

    iget-object v4, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    if-eq v1, v4, :cond_4

    .line 951
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getSelectedType()Lcom/metamoji/ex/SendDialog$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ex/SendDialog$Type;->getIntValue()I

    move-result v1

    const-string v4, "MMJNtSendType"

    invoke-virtual {v0, v4, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 953
    :cond_4
    iget-object v1, p0, Lcom/metamoji/ex/SendDialog;->_mediaGroup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 954
    iget-object v1, p0, Lcom/metamoji/ex/SendDialog;->_includeVoiceFilesSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v1

    const-string v4, "MMJNtSendVoice"

    invoke-virtual {v0, v4, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 955
    iget-object v1, p0, Lcom/metamoji/ex/SendDialog;->_shareVoiceFilesSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v1

    const-string v4, "MMJNtSendRecordings"

    invoke-virtual {v0, v4, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 961
    :cond_5
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 962
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 963
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_userDicList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 964
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_mergePDFView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_mergePDFSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/metamoji/ex/SendDialog;->_totalPageCount:I

    const/16 v4, 0x64

    if-le v0, v4, :cond_6

    .line 965
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$string;->SENDDIALOG_MSG_ERROR_MERGE_INTO_ONE_PDF_OVER_100:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 968
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getSelectedUser()Lcom/metamoji/ex/SendDialog$User;

    move-result-object v0

    .line 969
    sget-object v4, Lcom/metamoji/ex/SendDialog$User;->Selected:Lcom/metamoji/ex/SendDialog$User;

    if-ne v0, v4, :cond_7

    .line 970
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    .line 971
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_selectedUserDicList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 972
    new-instance v5, Lcom/metamoji/ex/SendDialog$9;

    invoke-direct {v5, p0, v4}, Lcom/metamoji/ex/SendDialog$9;-><init>(Lcom/metamoji/ex/SendDialog;Ljava/util/Map;)V

    .line 976
    iget-object v4, p0, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 979
    :cond_7
    sget-object v4, Lcom/metamoji/ex/SendDialog$User;->All:Lcom/metamoji/ex/SendDialog$User;

    if-ne v0, v4, :cond_8

    .line 980
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    .line 981
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_userDicList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 982
    new-instance v5, Lcom/metamoji/ex/SendDialog$10;

    invoke-direct {v5, p0, v4}, Lcom/metamoji/ex/SendDialog$10;-><init>(Lcom/metamoji/ex/SendDialog;Ljava/util/Map;)V

    .line 986
    iget-object v4, p0, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 989
    :cond_8
    sget-object v4, Lcom/metamoji/ex/SendDialog$User;->Current:Lcom/metamoji/ex/SendDialog$User;

    if-ne v0, v4, :cond_9

    .line 990
    iput-object v1, p0, Lcom/metamoji/ex/SendDialog;->sendUserDicList:Ljava/util/List;

    .line 994
    :cond_9
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_mergePDFView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_mergePDFSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    move v2, v3

    :cond_a
    iput-boolean v2, p0, Lcom/metamoji/ex/SendDialog;->allInOnePDF:Z

    .line 996
    invoke-virtual {p0, v1}, Lcom/metamoji/ex/SendDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method private getExecBtnTitleId()I
    .locals 2

    .line 1020
    sget-object v0, Lcom/metamoji/ex/SendDialog$11;->$SwitchMap$com$metamoji$ui$PopupCommand:[I

    iget-object v1, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v1}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1034
    sget v0, Lcom/metamoji/noteanytime/R$string;->Menu_Send:I

    return v0

    .line 1028
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->SEND_BUTTON_PRINT:I

    return v0

    .line 1030
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$string;->SEND_BUTTON_SAVE:I

    return v0

    .line 1032
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$string;->SEND_BUTTON_SAVE:I

    return v0
.end method

.method private getTitleId()I
    .locals 2

    .line 1000
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    if-nez v0, :cond_0

    .line 1001
    sget v0, Lcom/metamoji/noteanytime/R$string;->SendWindow_Application:I

    return v0

    .line 1003
    :cond_0
    sget-object v0, Lcom/metamoji/ex/SendDialog$11;->$SwitchMap$com$metamoji$ui$PopupCommand:[I

    iget-object v1, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v1}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 1015
    sget v0, Lcom/metamoji/noteanytime/R$string;->SendWindow_Application:I

    return v0

    .line 1013
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$string;->SendWindow_Print:I

    return v0

    .line 1011
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$string;->Save_To_Album:I

    return v0

    .line 1009
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$string;->Export_WebDAV:I

    return v0

    .line 1007
    :cond_4
    sget v0, Lcom/metamoji/noteanytime/R$string;->Share_SaveToFile:I

    return v0

    .line 1005
    :cond_5
    sget v0, Lcom/metamoji/noteanytime/R$string;->SendWindow_Application:I

    return v0
.end method

.method private hideShareVoiceFilesGroup()V
    .locals 5

    .line 712
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_shareVoiceFilesGroup:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_shareVoiceFilesSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiSwitch;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_includeVoiceFilesGroup:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->group_background_up:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 717
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 718
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->groupPaddingLeft:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 719
    sget v2, Lcom/metamoji/noteanytime/R$dimen;->groupPaddingRight:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 720
    sget v3, Lcom/metamoji/noteanytime/R$dimen;->groupPaddingTop:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 721
    sget v4, Lcom/metamoji/noteanytime/R$dimen;->groupPaddingBottom:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 722
    iget-object v4, p0, Lcom/metamoji/ex/SendDialog;->_includeVoiceFilesGroup:Landroid/view/View;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Ljava/util/ArrayList;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 388
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/metamoji/ex/SendDialog;->_selectedUserDicList:Ljava/util/ArrayList;

    .line 390
    invoke-direct {p0}, Lcom/metamoji/ex/SendDialog;->updateView()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateView$1(I)V
    .locals 1

    .line 383
    new-instance p1, Lcom/metamoji/ex/user/ScUserSelectDialog;

    invoke-direct {p1}, Lcom/metamoji/ex/user/ScUserSelectDialog;-><init>()V

    .line 384
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_userDicList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p1, Lcom/metamoji/ex/user/ScUserSelectDialog;->userDicList:Ljava/util/ArrayList;

    .line 385
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_selectedUserDicList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p1, Lcom/metamoji/ex/user/ScUserSelectDialog;->selectedUserDicList:Ljava/util/ArrayList;

    .line 386
    new-instance v0, Lcom/metamoji/ex/SendDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/metamoji/ex/SendDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ex/SendDialog;)V

    iput-object v0, p1, Lcom/metamoji/ex/user/ScUserSelectDialog;->afterAction:Lcom/metamoji/ex/user/IScUserSelectDialogAfterAction;

    .line 393
    const-string v0, "CabinetUserSlectDialog"

    invoke-virtual {p1, v0}, Lcom/metamoji/ex/user/ScUserSelectDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$2(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 396
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog;->_mergePDFSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/ex/SendDialog;->_mergePDFSwitchChecked:Z

    .line 398
    invoke-direct {p0}, Lcom/metamoji/ex/SendDialog;->updateView()V

    return-void
.end method

.method private onTypeJpegBtnCheckChanged()V
    .locals 2

    .line 775
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageAllBtn:Lcom/metamoji/ui/common/UiRadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    .line 776
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageCurrentBtn:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    .line 777
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageNumRangeBtn:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    .line 778
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageSelectedAreaBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 780
    sget v0, Lcom/metamoji/noteanytime/R$id;->pageAllBtn:I

    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/metamoji/ex/SendDialog;->adjustsPageCheckedState(ILandroid/view/View;)V

    return-void
.end method

.method private onTypeNoteAnytimeBtnCheckChanged()V
    .locals 2

    .line 803
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageAllBtn:Lcom/metamoji/ui/common/UiRadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    .line 804
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageCurrentBtn:Lcom/metamoji/ui/common/UiRadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    .line 805
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageNumRangeBtn:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    .line 806
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageSelectedAreaBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 808
    sget v0, Lcom/metamoji/noteanytime/R$id;->pageAllBtn:I

    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/metamoji/ex/SendDialog;->adjustsPageCheckedState(ILandroid/view/View;)V

    return-void
.end method

.method private onTypePdfBtnCheckChanged()V
    .locals 5

    .line 766
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageAllBtn:Lcom/metamoji/ui/common/UiRadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    .line 767
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageCurrentBtn:Lcom/metamoji/ui/common/UiRadioButton;

    iget v2, p0, Lcom/metamoji/ex/SendDialog;->_currentPageNum:I

    iget v3, p0, Lcom/metamoji/ex/SendDialog;->_minPageNum:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    .line 768
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageNumRangeBtn:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    .line 769
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageSelectedAreaBtn:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 771
    sget v0, Lcom/metamoji/noteanytime/R$id;->pageAllBtn:I

    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/metamoji/ex/SendDialog;->adjustsPageCheckedState(ILandroid/view/View;)V

    return-void
.end method

.method private onTypeTextBtnCheckChanged()V
    .locals 2

    .line 785
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageAllBtn:Lcom/metamoji/ui/common/UiRadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    .line 786
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageCurrentBtn:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    .line 787
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageNumRangeBtn:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    .line 789
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->clearCheck()V

    return-void
.end method

.method private onTypeTextFileBtnCheckChanged()V
    .locals 2

    .line 794
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageAllBtn:Lcom/metamoji/ui/common/UiRadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    .line 795
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageCurrentBtn:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    .line 796
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageNumRangeBtn:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    .line 798
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->clearCheck()V

    return-void
.end method

.method private setSelectedType(Lcom/metamoji/ex/SendDialog$Type;Landroid/view/View;)V
    .locals 1

    .line 1058
    invoke-virtual {p1}, Lcom/metamoji/ex/SendDialog$Type;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-void

    .line 1066
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->typeTextFileBtn:I

    goto :goto_0

    .line 1064
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$id;->typeTextBtn:I

    goto :goto_0

    .line 1068
    :cond_2
    sget p1, Lcom/metamoji/noteanytime/R$id;->typeNoteAnytimeBtn:I

    goto :goto_0

    .line 1060
    :cond_3
    sget p1, Lcom/metamoji/noteanytime/R$id;->typePdfBtn:I

    goto :goto_0

    .line 1062
    :cond_4
    sget p1, Lcom/metamoji/noteanytime/R$id;->typeJpegBtn:I

    .line 1073
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 1074
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_5

    .line 1075
    sget p1, Lcom/metamoji/noteanytime/R$id;->typeJpegBtn:I

    .line 1076
    :cond_5
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_typeRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {p2, p1}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    return-void
.end method

.method private showActionMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/view/View;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 916
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x0

    .line 917
    invoke-static {v0, p3, v1}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    const/high16 p3, -0x40000000    # -2.0f

    .line 918
    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p3

    float-to-int p3, p3

    .line 919
    invoke-virtual {v5, p3, p3}, Landroid/graphics/Rect;->inset(II)V

    .line 921
    iget-object v2, p0, Lcom/metamoji/ex/SendDialog;->_menu:Lcom/metamoji/ui/CustomMenuView;

    sget-object v6, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_DOWN:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    const/4 v7, 0x3

    move-object v3, p1

    move-object v4, p2

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/ui/CustomMenuView;->ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;Lcom/metamoji/ui/CustomMenuView$MenuDirection;II)V

    return-void
.end method

.method private updateView()V
    .locals 8

    .line 607
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_userDicList:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_selectedUserDicList:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    .line 609
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 610
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getSelectedUser()Lcom/metamoji/ex/SendDialog$User;

    move-result-object v1

    .line 611
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getSelectedType()Lcom/metamoji/ex/SendDialog$Type;

    move-result-object v2

    .line 614
    sget-object v3, Lcom/metamoji/ui/PopupCommand;->SENDWINDOW_PRINT:Lcom/metamoji/ui/PopupCommand;

    iget-object v4, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    .line 615
    sget-object v3, Lcom/metamoji/ex/SendDialog$Type;->Pdf:Lcom/metamoji/ex/SendDialog$Type;

    if-ne v2, v3, :cond_2

    .line 616
    sget-object v3, Lcom/metamoji/ex/SendDialog$User;->All:Lcom/metamoji/ex/SendDialog$User;

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/metamoji/ex/SendDialog;->_userDicList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v6, :cond_1

    :cond_0
    sget-object v3, Lcom/metamoji/ex/SendDialog$User;->Selected:Lcom/metamoji/ex/SendDialog$User;

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/metamoji/ex/SendDialog;->_selectedUserDicList:Ljava/util/ArrayList;

    .line 617
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_2

    :cond_1
    move v3, v6

    goto :goto_0

    :cond_2
    move v3, v5

    .line 622
    :goto_0
    iget-object v4, p0, Lcom/metamoji/ex/SendDialog;->_mergePDFView:Landroid/view/View;

    if-eqz v3, :cond_3

    move v3, v5

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 624
    iput v6, p0, Lcom/metamoji/ex/SendDialog;->_totalPageCount:I

    .line 626
    sget v3, Lcom/metamoji/noteanytime/R$string;->SENDDIALOG_USER_ALL:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/ex/SendDialog;->_userDicList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 627
    iget-object v4, p0, Lcom/metamoji/ex/SendDialog;->_userAllBtn:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {v4, v3}, Lcom/metamoji/ui/common/UiRadioButton;->setMainTitle(Ljava/lang/CharSequence;)V

    .line 629
    sget v3, Lcom/metamoji/noteanytime/R$string;->SENDDIALOG_USER_SELECT:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/ex/SendDialog;->_selectedUserDicList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 630
    iget-object v4, p0, Lcom/metamoji/ex/SendDialog;->_userSelectedBtn:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {v4, v3}, Lcom/metamoji/ui/common/UiRadioButton;->setMainTitle(Ljava/lang/CharSequence;)V

    .line 632
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getPageRange()[I

    move-result-object v3

    if-eqz v3, :cond_4

    .line 633
    array-length v4, v3

    const/4 v7, 0x2

    if-ne v4, v7, :cond_4

    .line 634
    aget v4, v3, v6

    aget v3, v3, v5

    sub-int/2addr v4, v3

    add-int/2addr v4, v6

    iput v4, p0, Lcom/metamoji/ex/SendDialog;->_totalPageCount:I

    .line 636
    :cond_4
    iput v5, p0, Lcom/metamoji/ex/SendDialog;->_totalUserCount:I

    .line 637
    sget-object v3, Lcom/metamoji/ex/SendDialog$User;->All:Lcom/metamoji/ex/SendDialog$User;

    if-ne v1, v3, :cond_5

    .line 638
    iget-object v3, p0, Lcom/metamoji/ex/SendDialog;->_userDicList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/metamoji/ex/SendDialog;->_totalUserCount:I

    .line 639
    iget v4, p0, Lcom/metamoji/ex/SendDialog;->_totalPageCount:I

    mul-int/2addr v4, v3

    iput v4, p0, Lcom/metamoji/ex/SendDialog;->_totalPageCount:I

    goto :goto_2

    .line 641
    :cond_5
    sget-object v3, Lcom/metamoji/ex/SendDialog$User;->Selected:Lcom/metamoji/ex/SendDialog$User;

    if-ne v1, v3, :cond_6

    .line 642
    iget-object v3, p0, Lcom/metamoji/ex/SendDialog;->_selectedUserDicList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/metamoji/ex/SendDialog;->_totalUserCount:I

    .line 643
    iget v4, p0, Lcom/metamoji/ex/SendDialog;->_totalPageCount:I

    mul-int/2addr v4, v3

    iput v4, p0, Lcom/metamoji/ex/SendDialog;->_totalPageCount:I

    .line 647
    :cond_6
    :goto_2
    sget v3, Lcom/metamoji/noteanytime/R$string;->SENDDIALOG_TOTAL_PAGE_COUNT:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/metamoji/ex/SendDialog;->_totalPageCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 648
    iget-object v4, p0, Lcom/metamoji/ex/SendDialog;->_userToalPageCountText:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v4, v3}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v3, p0, Lcom/metamoji/ex/SendDialog;->_userSendTypeView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_14

    .line 652
    sget-object v3, Lcom/metamoji/ex/SendDialog$User;->Current:Lcom/metamoji/ex/SendDialog$User;

    if-eq v1, v3, :cond_d

    .line 654
    sget-object v1, Lcom/metamoji/ex/SendDialog$Type;->Pdf:Lcom/metamoji/ex/SendDialog$Type;

    if-ne v2, v1, :cond_9

    .line 655
    iget v1, p0, Lcom/metamoji/ex/SendDialog;->_totalUserCount:I

    if-le v1, v6, :cond_8

    iget-object v1, p0, Lcom/metamoji/ex/SendDialog;->_mergePDFView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/metamoji/ex/SendDialog;->_mergePDFSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_8

    .line 656
    :cond_7
    sget v1, Lcom/metamoji/noteanytime/R$string;->SENDDIALOG_TYPE_ZIP:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 659
    :cond_8
    sget v1, Lcom/metamoji/noteanytime/R$string;->Share_Format_PDF:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 662
    :cond_9
    sget-object v1, Lcom/metamoji/ex/SendDialog$Type;->Jpeg:Lcom/metamoji/ex/SendDialog$Type;

    if-ne v2, v1, :cond_b

    .line 663
    iget v1, p0, Lcom/metamoji/ex/SendDialog;->_totalPageCount:I

    if-le v1, v6, :cond_a

    .line 664
    sget v1, Lcom/metamoji/noteanytime/R$string;->SENDDIALOG_TYPE_ZIP:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 667
    :cond_a
    sget v1, Lcom/metamoji/noteanytime/R$string;->SENDDIALOG_TYPE_JPEG:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 670
    :cond_b
    sget-object v1, Lcom/metamoji/ex/SendDialog$Type;->NoteAnytime:Lcom/metamoji/ex/SendDialog$Type;

    if-ne v2, v1, :cond_13

    .line 671
    iget v1, p0, Lcom/metamoji/ex/SendDialog;->_totalUserCount:I

    if-le v1, v6, :cond_c

    .line 672
    sget v1, Lcom/metamoji/noteanytime/R$string;->SENDDIALOG_TYPE_ZIP:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 675
    :cond_c
    sget v1, Lcom/metamoji/noteanytime/R$string;->Share_Format_Doc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 681
    :cond_d
    sget-object v1, Lcom/metamoji/ex/SendDialog$Type;->Pdf:Lcom/metamoji/ex/SendDialog$Type;

    if-ne v2, v1, :cond_e

    .line 682
    sget v1, Lcom/metamoji/noteanytime/R$string;->Share_Format_PDF:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 684
    :cond_e
    sget-object v1, Lcom/metamoji/ex/SendDialog$Type;->Jpeg:Lcom/metamoji/ex/SendDialog$Type;

    if-ne v2, v1, :cond_12

    .line 685
    iget-object v1, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_APPLICATION:Lcom/metamoji/ui/PopupCommand;

    if-eq v1, v3, :cond_10

    iget-object v1, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_WEBDAV:Lcom/metamoji/ui/PopupCommand;

    if-ne v1, v3, :cond_f

    goto :goto_3

    .line 694
    :cond_f
    sget v1, Lcom/metamoji/noteanytime/R$string;->SENDDIALOG_TYPE_JPEG:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 686
    :cond_10
    :goto_3
    iget v1, p0, Lcom/metamoji/ex/SendDialog;->_totalPageCount:I

    if-le v1, v6, :cond_11

    .line 687
    sget v1, Lcom/metamoji/noteanytime/R$string;->SENDDIALOG_TYPE_ZIP:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 690
    :cond_11
    sget v1, Lcom/metamoji/noteanytime/R$string;->SENDDIALOG_TYPE_JPEG:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 697
    :cond_12
    sget-object v1, Lcom/metamoji/ex/SendDialog$Type;->NoteAnytime:Lcom/metamoji/ex/SendDialog$Type;

    if-ne v2, v1, :cond_13

    .line 698
    sget v1, Lcom/metamoji/noteanytime/R$string;->Share_Format_Doc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 702
    :cond_13
    const-string v1, ""

    :goto_4
    sget v3, Lcom/metamoji/noteanytime/R$string;->SENDDIALOG_LABEL_SENDTYPE:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "%@"

    const-string v4, "%s"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 703
    iget-object v1, p0, Lcom/metamoji/ex/SendDialog;->_userSendTypeText:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    :cond_14
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_execBtn:Lcom/metamoji/ui/common/UiButton;

    sget-object v1, Lcom/metamoji/ex/SendDialog$Type;->Text:Lcom/metamoji/ex/SendDialog$Type;

    if-eq v2, v1, :cond_15

    sget-object v1, Lcom/metamoji/ex/SendDialog$Type;->TextFile:Lcom/metamoji/ex/SendDialog$Type;

    if-eq v2, v1, :cond_15

    iget v1, p0, Lcom/metamoji/ex/SendDialog;->_totalPageCount:I

    if-lez v1, :cond_16

    :cond_15
    move v5, v6

    :cond_16
    invoke-virtual {v0, v5}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    :cond_17
    return-void
.end method


# virtual methods
.method public getPageRange()[I
    .locals 3

    .line 1111
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getSelectedPage()Lcom/metamoji/ex/SendDialog$Page;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1115
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ex/SendDialog$Page;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return-object v1

    .line 1121
    :cond_1
    iget v0, p0, Lcom/metamoji/ex/SendDialog;->_fromPageNum:I

    iget v1, p0, Lcom/metamoji/ex/SendDialog;->_toPageNum:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0

    .line 1119
    :cond_2
    iget v0, p0, Lcom/metamoji/ex/SendDialog;->_currentPageNum:I

    filled-new-array {v0, v0}, [I

    move-result-object v0

    return-object v0

    .line 1117
    :cond_3
    iget v0, p0, Lcom/metamoji/ex/SendDialog;->_minPageNum:I

    iget v1, p0, Lcom/metamoji/ex/SendDialog;->_maxPageNum:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public getSelectedPage()Lcom/metamoji/ex/SendDialog$Page;
    .locals 2

    .line 1080
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButton()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->pageSelectedAreaBtn:I

    if-ne v0, v1, :cond_0

    .line 1081
    sget-object v0, Lcom/metamoji/ex/SendDialog$Page;->SelectedArea:Lcom/metamoji/ex/SendDialog$Page;

    return-object v0

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButton()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->pageAllBtn:I

    if-ne v0, v1, :cond_1

    .line 1083
    sget-object v0, Lcom/metamoji/ex/SendDialog$Page;->All:Lcom/metamoji/ex/SendDialog$Page;

    return-object v0

    .line 1084
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButton()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->pageCurrentBtn:I

    if-ne v0, v1, :cond_2

    .line 1085
    sget-object v0, Lcom/metamoji/ex/SendDialog$Page;->Current:Lcom/metamoji/ex/SendDialog$Page;

    return-object v0

    .line 1086
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_pageRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButton()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->pageNumRangeBtn:I

    if-ne v0, v1, :cond_3

    .line 1087
    sget-object v0, Lcom/metamoji/ex/SendDialog$Page;->Selected:Lcom/metamoji/ex/SendDialog$Page;

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedType()Lcom/metamoji/ex/SendDialog$Type;
    .locals 2

    .line 1039
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    sget-object v1, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_ALBUM:Lcom/metamoji/ui/PopupCommand;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/metamoji/ex/SendDialog$Type;->Jpeg:Lcom/metamoji/ex/SendDialog$Type;

    return-object v0

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_typeRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButton()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->typePdfBtn:I

    if-ne v0, v1, :cond_1

    .line 1042
    sget-object v0, Lcom/metamoji/ex/SendDialog$Type;->Pdf:Lcom/metamoji/ex/SendDialog$Type;

    return-object v0

    .line 1043
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_typeRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButton()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->typeJpegBtn:I

    if-ne v0, v1, :cond_2

    .line 1044
    sget-object v0, Lcom/metamoji/ex/SendDialog$Type;->Jpeg:Lcom/metamoji/ex/SendDialog$Type;

    return-object v0

    .line 1045
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_typeRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButton()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->typeTextBtn:I

    if-ne v0, v1, :cond_3

    .line 1046
    sget-object v0, Lcom/metamoji/ex/SendDialog$Type;->Text:Lcom/metamoji/ex/SendDialog$Type;

    return-object v0

    .line 1047
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_typeRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButton()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->typeTextFileBtn:I

    if-ne v0, v1, :cond_4

    .line 1048
    sget-object v0, Lcom/metamoji/ex/SendDialog$Type;->TextFile:Lcom/metamoji/ex/SendDialog$Type;

    return-object v0

    .line 1049
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_typeRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButton()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->typeNoteAnytimeBtn:I

    if-ne v0, v1, :cond_5

    .line 1050
    sget-object v0, Lcom/metamoji/ex/SendDialog$Type;->NoteAnytime:Lcom/metamoji/ex/SendDialog$Type;

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedUser()Lcom/metamoji/ex/SendDialog$User;
    .locals 2

    .line 1094
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_userRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButton()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->userSelectedBtn:I

    if-ne v0, v1, :cond_0

    .line 1095
    sget-object v0, Lcom/metamoji/ex/SendDialog$User;->Selected:Lcom/metamoji/ex/SendDialog$User;

    return-object v0

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_userRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButton()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->userAllBtn:I

    if-ne v0, v1, :cond_1

    .line 1097
    sget-object v0, Lcom/metamoji/ex/SendDialog$User;->All:Lcom/metamoji/ex/SendDialog$User;

    return-object v0

    .line 1098
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_userRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButton()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->userCurrentBtn:I

    if-ne v0, v1, :cond_2

    .line 1099
    sget-object v0, Lcom/metamoji/ex/SendDialog$User;->Current:Lcom/metamoji/ex/SendDialog$User;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public isIncludeVoiceFile()Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_mediaGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_includeVoiceFilesSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_shareVoiceFilesSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiSwitch;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/ex/SendDialog;->_shareVoiceFilesSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1133
    :cond_1
    sget-object v0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->SHARED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    return-object v0

    .line 1131
    :cond_2
    :goto_0
    sget-object v0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->INCLUDED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    return-object v0

    .line 1129
    :cond_3
    :goto_1
    sget-object v0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->REMOVED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 260
    const-string v2, "Type"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ex/SendDialog$Type;

    iput-object v2, p0, Lcom/metamoji/ex/SendDialog;->_type:Lcom/metamoji/ex/SendDialog$Type;

    .line 261
    const-string v2, "TextEnabled"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/ex/SendDialog;->textEnabled:Z

    .line 266
    const-string v2, "Command"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/PopupCommand;

    iput-object v2, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    .line 274
    const-string v2, "UserDicList"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/metamoji/ex/SendDialog;->_userDicList:Ljava/util/ArrayList;

    .line 275
    const-string v2, "SelectedUserDicList"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/metamoji/ex/SendDialog;->_selectedUserDicList:Ljava/util/ArrayList;

    .line 277
    const-string v2, "UserRadioGroupCurrentButton"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/metamoji/ex/SendDialog;->_userRadioGroupCurrentButton:I

    .line 279
    const-string v2, "MergePDFSwitchChecked"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/ex/SendDialog;->_mergePDFSwitchChecked:Z

    move v3, v1

    move v4, v3

    goto :goto_1

    .line 282
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v2

    .line 283
    const-string v3, "MMJNtSendVoice"

    invoke-virtual {v2, v3, v1}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v3

    .line 285
    const-string v4, "MMJNtSendRecordings"

    invoke-virtual {v2, v4, v0}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v4

    xor-int/2addr v4, v1

    .line 287
    sget-object v5, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_APPLICATION:Lcom/metamoji/ui/PopupCommand;

    iget-object v6, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    if-eq v5, v6, :cond_2

    sget-object v5, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_FILE:Lcom/metamoji/ui/PopupCommand;

    iget-object v6, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    if-eq v5, v6, :cond_2

    sget-object v5, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_WEBDAV:Lcom/metamoji/ui/PopupCommand;

    iget-object v6, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    if-ne v5, v6, :cond_1

    goto :goto_0

    .line 293
    :cond_1
    sget-object v2, Lcom/metamoji/ui/PopupCommand;->SENDWINDOW_PRINT:Lcom/metamoji/ui/PopupCommand;

    iget-object v5, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    if-ne v2, v5, :cond_3

    .line 294
    sget-object v2, Lcom/metamoji/ex/SendDialog$Type;->Pdf:Lcom/metamoji/ex/SendDialog$Type;

    iput-object v2, p0, Lcom/metamoji/ex/SendDialog;->_type:Lcom/metamoji/ex/SendDialog$Type;

    goto :goto_1

    .line 288
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/metamoji/ex/SendDialog;->_type:Lcom/metamoji/ex/SendDialog$Type;

    if-nez v5, :cond_3

    .line 289
    sget-object v5, Lcom/metamoji/ex/SendDialog$Type;->Pdf:Lcom/metamoji/ex/SendDialog$Type;

    invoke-virtual {v5}, Lcom/metamoji/ex/SendDialog$Type;->getIntValue()I

    move-result v5

    const-string v6, "MMJNtSendType"

    invoke-virtual {v2, v6, v5}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/metamoji/ex/SendDialog$Type;->valueOf(I)Lcom/metamoji/ex/SendDialog$Type;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/ex/SendDialog;->_type:Lcom/metamoji/ex/SendDialog$Type;

    .line 298
    :cond_3
    :goto_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 299
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/nt/NtDocument;->canCreatePdf()Z

    move-result v5

    .line 301
    sget-object v6, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_APPLICATION:Lcom/metamoji/ui/PopupCommand;

    iget-object v7, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    if-eq v6, v7, :cond_4

    sget-object v6, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_FILE:Lcom/metamoji/ui/PopupCommand;

    iget-object v7, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    if-eq v6, v7, :cond_4

    sget-object v6, Lcom/metamoji/ui/PopupCommand;->SENDWINDOW_PRINT:Lcom/metamoji/ui/PopupCommand;

    iget-object v7, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    if-eq v6, v7, :cond_4

    sget-object v6, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_WEBDAV:Lcom/metamoji/ui/PopupCommand;

    iget-object v7, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    if-ne v6, v7, :cond_9

    .line 306
    :cond_4
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v6

    .line 307
    invoke-virtual {v6}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v7

    iput v7, p0, Lcom/metamoji/ex/SendDialog;->_pageCount:I

    .line 309
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v7

    const-string v8, "MMJNtDocumentSettings"

    invoke-virtual {v7, v8}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v7

    check-cast v7, Lcom/metamoji/nt/NtDocumentSettings;

    .line 310
    invoke-virtual {v7}, Lcom/metamoji/nt/NtDocumentSettings;->hasFrontCover()Z

    move-result v8

    iput-boolean v8, p0, Lcom/metamoji/ex/SendDialog;->_hasFrontCover:Z

    .line 311
    invoke-virtual {v7}, Lcom/metamoji/nt/NtDocumentSettings;->getNoFrontCoverOnPrinting()Z

    move-result v7

    iput-boolean v7, p0, Lcom/metamoji/ex/SendDialog;->_noFrontCoverOnPrinting:Z

    .line 315
    invoke-virtual {v6}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v6

    iput v6, p0, Lcom/metamoji/ex/SendDialog;->_currentPageNum:I

    if-nez v5, :cond_5

    .line 317
    iput v0, p0, Lcom/metamoji/ex/SendDialog;->_minPageNum:I

    .line 318
    iput v0, p0, Lcom/metamoji/ex/SendDialog;->_maxPageNum:I

    goto :goto_3

    .line 320
    :cond_5
    iget-boolean v7, p0, Lcom/metamoji/ex/SendDialog;->_hasFrontCover:Z

    if-eqz v7, :cond_7

    .line 321
    iget-boolean v6, p0, Lcom/metamoji/ex/SendDialog;->_noFrontCoverOnPrinting:Z

    if-eqz v6, :cond_6

    .line 322
    iput v1, p0, Lcom/metamoji/ex/SendDialog;->_minPageNum:I

    goto :goto_2

    .line 324
    :cond_6
    iput v0, p0, Lcom/metamoji/ex/SendDialog;->_minPageNum:I

    .line 326
    :goto_2
    iget v6, p0, Lcom/metamoji/ex/SendDialog;->_pageCount:I

    sub-int/2addr v6, v1

    iput v6, p0, Lcom/metamoji/ex/SendDialog;->_maxPageNum:I

    goto :goto_3

    :cond_7
    add-int/2addr v6, v1

    .line 328
    iput v6, p0, Lcom/metamoji/ex/SendDialog;->_currentPageNum:I

    .line 329
    iput v1, p0, Lcom/metamoji/ex/SendDialog;->_minPageNum:I

    .line 330
    iget v6, p0, Lcom/metamoji/ex/SendDialog;->_pageCount:I

    iput v6, p0, Lcom/metamoji/ex/SendDialog;->_maxPageNum:I

    :goto_3
    if-eqz p3, :cond_8

    .line 334
    const-string v6, "FromPageNum"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/metamoji/ex/SendDialog;->_fromPageNum:I

    .line 335
    const-string v6, "ToPageNum"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/metamoji/ex/SendDialog;->_toPageNum:I

    goto :goto_4

    .line 338
    :cond_8
    iget v6, p0, Lcom/metamoji/ex/SendDialog;->_minPageNum:I

    iput v6, p0, Lcom/metamoji/ex/SendDialog;->_fromPageNum:I

    .line 339
    iget v6, p0, Lcom/metamoji/ex/SendDialog;->_maxPageNum:I

    iput v6, p0, Lcom/metamoji/ex/SendDialog;->_toPageNum:I

    .line 343
    :cond_9
    :goto_4
    sget v6, Lcom/metamoji/noteanytime/R$layout;->dialog_senddialog:I

    iput v6, p0, Lcom/metamoji/ex/SendDialog;->mViewId:I

    .line 344
    invoke-direct {p0}, Lcom/metamoji/ex/SendDialog;->getTitleId()I

    move-result v6

    iput v6, p0, Lcom/metamoji/ex/SendDialog;->mTitleId:I

    .line 345
    iput-boolean v0, p0, Lcom/metamoji/ex/SendDialog;->mDone:Z

    .line 347
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 349
    sget p2, Lcom/metamoji/noteanytime/R$id;->radioGroupType:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_typeRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 350
    sget p2, Lcom/metamoji/noteanytime/R$id;->groupPage:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_pageGroup:Landroid/view/View;

    .line 351
    sget p2, Lcom/metamoji/noteanytime/R$id;->radioGroupPage:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_pageRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 352
    sget p2, Lcom/metamoji/noteanytime/R$id;->pageSelectedAreaBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_pageSelectedAreaBtn:Landroid/view/View;

    .line 353
    sget p2, Lcom/metamoji/noteanytime/R$id;->pageAllBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioButton;

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_pageAllBtn:Lcom/metamoji/ui/common/UiRadioButton;

    .line 354
    sget p2, Lcom/metamoji/noteanytime/R$id;->pageCurrentBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioButton;

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_pageCurrentBtn:Lcom/metamoji/ui/common/UiRadioButton;

    .line 355
    sget p2, Lcom/metamoji/noteanytime/R$id;->pageNumRangeBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioButton;

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_pageNumRangeBtn:Lcom/metamoji/ui/common/UiRadioButton;

    .line 356
    sget p2, Lcom/metamoji/noteanytime/R$id;->groupPageNumRange:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_pageNumRangeGroup:Landroid/view/View;

    .line 357
    sget p2, Lcom/metamoji/noteanytime/R$id;->groupMedia:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_mediaGroup:Landroid/view/View;

    .line 358
    sget p2, Lcom/metamoji/noteanytime/R$id;->groupIncludeVoiceFile:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_includeVoiceFilesGroup:Landroid/view/View;

    .line 359
    sget p2, Lcom/metamoji/noteanytime/R$id;->switchIncludeVoiceFile:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_includeVoiceFilesSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 360
    sget p2, Lcom/metamoji/noteanytime/R$id;->groupShareVoiceFile:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_shareVoiceFilesGroup:Landroid/view/View;

    .line 361
    sget p2, Lcom/metamoji/noteanytime/R$id;->textShareVoiceFile:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiTextView;

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_shareVoiceFilesText:Lcom/metamoji/ui/common/UiTextView;

    .line 362
    sget p2, Lcom/metamoji/noteanytime/R$id;->switchShareVoiceFile:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_shareVoiceFilesSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 364
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_typeRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    iget-object v6, p0, Lcom/metamoji/ex/SendDialog;->_onTypeGroupCheckChanged:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p2, v6}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 365
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_pageRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    iget-object v6, p0, Lcom/metamoji/ex/SendDialog;->_onPageGroupCheckChanged:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p2, v6}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 366
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_includeVoiceFilesSwitch:Lcom/metamoji/ui/common/UiSwitch;

    iget-object v6, p0, Lcom/metamoji/ex/SendDialog;->_onIncludeVoiceFilesSwitchChanged:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v6}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 368
    sget p2, Lcom/metamoji/noteanytime/R$id;->groupUser:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_userGroup:Landroid/view/View;

    .line 370
    sget p2, Lcom/metamoji/noteanytime/R$id;->radioGroupUser:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_userRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 371
    sget p2, Lcom/metamoji/noteanytime/R$id;->userCurrentBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioButton;

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_userCurrentBtn:Lcom/metamoji/ui/common/UiRadioButton;

    .line 372
    sget p2, Lcom/metamoji/noteanytime/R$id;->userAllBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioButton;

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_userAllBtn:Lcom/metamoji/ui/common/UiRadioButton;

    .line 373
    sget p2, Lcom/metamoji/noteanytime/R$id;->userSelectedBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioButton;

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_userSelectedBtn:Lcom/metamoji/ui/common/UiRadioButton;

    .line 374
    sget p2, Lcom/metamoji/noteanytime/R$id;->userToalPageCountView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_userToalPageCountView:Landroid/view/View;

    .line 375
    sget p2, Lcom/metamoji/noteanytime/R$id;->userSendTypeView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_userSendTypeView:Landroid/view/View;

    .line 376
    sget p2, Lcom/metamoji/noteanytime/R$id;->userToalPageCountText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiTextView;

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_userToalPageCountText:Lcom/metamoji/ui/common/UiTextView;

    .line 377
    sget p2, Lcom/metamoji/noteanytime/R$id;->userSendTypeText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiTextView;

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_userSendTypeText:Lcom/metamoji/ui/common/UiTextView;

    .line 378
    sget p2, Lcom/metamoji/noteanytime/R$id;->mergePDFView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_mergePDFView:Landroid/view/View;

    .line 379
    sget p2, Lcom/metamoji/noteanytime/R$id;->switchMergePDF:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_mergePDFSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 381
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_userRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    iget-object v6, p0, Lcom/metamoji/ex/SendDialog;->_onUserGroupCheckChanged:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p2, v6}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 382
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_userSelectedBtn:Lcom/metamoji/ui/common/UiRadioButton;

    new-instance v6, Lcom/metamoji/ex/SendDialog$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/metamoji/ex/SendDialog$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ex/SendDialog;)V

    invoke-virtual {p2, v6}, Lcom/metamoji/ui/common/UiRadioButton;->setOnClickListener(Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;)V

    .line 395
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_mergePDFSwitch:Lcom/metamoji/ui/common/UiSwitch;

    new-instance v6, Lcom/metamoji/ex/SendDialog$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/metamoji/ex/SendDialog$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/ex/SendDialog;)V

    invoke-virtual {p2, v6}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 406
    sget-object p2, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_ALBUM:Lcom/metamoji/ui/PopupCommand;

    iget-object v6, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    const/16 v7, 0xd

    const/16 v8, 0xf

    const/16 v9, 0x8

    if-ne p2, v6, :cond_a

    .line 408
    sget p2, Lcom/metamoji/noteanytime/R$id;->groupType:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 409
    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_pageNumRangeBtn:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {p2, v9}, Lcom/metamoji/ui/common/UiRadioButton;->setVisibility(I)V

    .line 414
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_pageCurrentBtn:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {p2, v8}, Lcom/metamoji/ui/common/UiRadioButton;->setRadioButtonType(I)V

    goto/16 :goto_6

    .line 418
    :cond_a
    sget-object p2, Lcom/metamoji/ui/PopupCommand;->SENDWINDOW_PRINT:Lcom/metamoji/ui/PopupCommand;

    iget-object v6, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    if-ne p2, v6, :cond_b

    .line 420
    sget p2, Lcom/metamoji/noteanytime/R$id;->groupType:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 421
    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 424
    :cond_b
    invoke-static {}, Lcom/metamoji/nt/NtPrintPDF;->canPrint()Z

    move-result p2

    if-eqz p2, :cond_c

    if-eqz v5, :cond_c

    .line 425
    iget p2, p0, Lcom/metamoji/ex/SendDialog;->_maxPageNum:I

    iget v5, p0, Lcom/metamoji/ex/SendDialog;->_minPageNum:I

    if-ge p2, v5, :cond_d

    .line 428
    :cond_c
    sget p2, Lcom/metamoji/noteanytime/R$id;->typePdfBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 429
    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 431
    sget p2, Lcom/metamoji/noteanytime/R$id;->typeJpegBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioButton;

    .line 432
    invoke-virtual {p2, v7}, Lcom/metamoji/ui/common/UiRadioButton;->setRadioButtonType(I)V

    .line 437
    :cond_d
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p2

    if-nez p2, :cond_f

    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ns/NsCollaboManager;->allowToSaveNoteAndCopyPage()Z

    move-result p2

    if-nez p2, :cond_f

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result p2

    if-nez p2, :cond_f

    .line 438
    sget p2, Lcom/metamoji/noteanytime/R$id;->typeNoteAnytimeBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioButton;

    .line 439
    invoke-virtual {p2, v9}, Lcom/metamoji/ui/common/UiRadioButton;->setVisibility(I)V

    .line 440
    iget-boolean p2, p0, Lcom/metamoji/ex/SendDialog;->textEnabled:Z

    if-eqz p2, :cond_e

    .line 441
    sget p2, Lcom/metamoji/noteanytime/R$id;->typeTextBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioButton;

    .line 442
    invoke-virtual {p2, v8}, Lcom/metamoji/ui/common/UiRadioButton;->setRadioButtonType(I)V

    goto :goto_5

    .line 444
    :cond_e
    sget p2, Lcom/metamoji/noteanytime/R$id;->typeJpegBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioButton;

    .line 445
    invoke-virtual {p2, v8}, Lcom/metamoji/ui/common/UiRadioButton;->setRadioButtonType(I)V

    .line 450
    :cond_f
    :goto_5
    sget p2, Lcom/metamoji/noteanytime/R$id;->fromPageNumBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 451
    sget v5, Lcom/metamoji/noteanytime/R$id;->toPageNumBtn:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 452
    iget v6, p0, Lcom/metamoji/ex/SendDialog;->_fromPageNum:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget v6, p0, Lcom/metamoji/ex/SendDialog;->_toPageNum:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v6, p0, Lcom/metamoji/ex/SendDialog;->_onPageNumRangeFromBtnClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_onPageNumRangeToBtnClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    new-instance p2, Lcom/metamoji/ui/CustomMenuView;

    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {p2, v5}, Lcom/metamoji/ui/CustomMenuView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog;->_menu:Lcom/metamoji/ui/CustomMenuView;

    .line 461
    sget p2, Lcom/metamoji/noteanytime/R$id;->control_dialog:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 462
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 463
    iget-object v5, p0, Lcom/metamoji/ex/SendDialog;->_menu:Lcom/metamoji/ui/CustomMenuView;

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 465
    iget-boolean p2, p0, Lcom/metamoji/ex/SendDialog;->textEnabled:Z

    if-nez p2, :cond_10

    .line 466
    sget p2, Lcom/metamoji/noteanytime/R$id;->typeTextBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 467
    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 468
    sget p2, Lcom/metamoji/noteanytime/R$id;->typeTextFileBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 469
    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 470
    :cond_10
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    sget-object v5, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_WEBDAV:Lcom/metamoji/ui/PopupCommand;

    if-eq p2, v5, :cond_11

    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    sget-object v5, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_FILE:Lcom/metamoji/ui/PopupCommand;

    if-ne p2, v5, :cond_12

    .line 471
    :cond_11
    sget p2, Lcom/metamoji/noteanytime/R$id;->typeTextFileBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 472
    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 477
    :cond_12
    :goto_6
    sget-object p2, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_ALBUM:Lcom/metamoji/ui/PopupCommand;

    iget-object v5, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    if-eq p2, v5, :cond_13

    sget-object p2, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_FILE:Lcom/metamoji/ui/PopupCommand;

    iget-object v5, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    if-ne p2, v5, :cond_14

    .line 478
    :cond_13
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 480
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object p2

    const-class v5, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    invoke-static {p2, v5}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    if-eqz p2, :cond_14

    .line 482
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->canRasterizeSelection()Z

    move-result p2

    goto :goto_7

    :cond_14
    move p2, v0

    :goto_7
    if-nez p2, :cond_15

    .line 487
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_pageSelectedAreaBtn:Landroid/view/View;

    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_pageAllBtn:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {p2, v7}, Lcom/metamoji/ui/common/UiRadioButton;->setRadioButtonType(I)V

    .line 493
    :cond_15
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/nt/NtDocument;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 494
    invoke-virtual {p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->hasTicket()Z

    move-result p2

    goto :goto_8

    :cond_16
    move p2, v0

    :goto_8
    iput-boolean p2, p0, Lcom/metamoji/ex/SendDialog;->_hasTicket:Z

    .line 496
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/nt/NtDocument;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/un/sound/UnSoundUtil;->hasSoundUnit(Lcom/metamoji/df/model/IModel;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/metamoji/ex/SendDialog;->_hasSoundUnit:Z

    .line 497
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_type:Lcom/metamoji/ex/SendDialog$Type;

    sget-object v5, Lcom/metamoji/ex/SendDialog$Type;->NoteAnytime:Lcom/metamoji/ex/SendDialog$Type;

    .line 501
    iget-object v6, p0, Lcom/metamoji/ex/SendDialog;->_mediaGroup:Landroid/view/View;

    if-eq p2, v5, :cond_17

    .line 498
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 501
    :cond_17
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    if-nez p3, :cond_18

    .line 504
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_includeVoiceFilesSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {p2, v3}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 505
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_shareVoiceFilesSwitch:Lcom/metamoji/ui/common/UiSwitch;

    xor-int/lit8 p3, v4, 0x1

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 507
    :cond_18
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_includeVoiceFilesSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {p2}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result p2

    if-nez p2, :cond_19

    .line 508
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_shareVoiceFilesText:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiTextView;->setEnabled(Z)V

    .line 509
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_shareVoiceFilesSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiSwitch;->setEnabled(Z)V

    .line 511
    :cond_19
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->isUseSync()Z

    move-result p2

    if-nez p2, :cond_1a

    .line 512
    invoke-direct {p0}, Lcom/metamoji/ex/SendDialog;->hideShareVoiceFilesGroup()V

    goto :goto_a

    .line 513
    :cond_1a
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->isOnPremise()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 514
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_shareVoiceFilesText:Lcom/metamoji/ui/common/UiTextView;

    sget p3, Lcom/metamoji/noteanytime/R$string;->App_SenddialogSharedVoiceFiles_OnPremise:I

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiTextView;->setText(I)V

    :cond_1b
    :goto_a
    if-eqz v2, :cond_1d

    .line 518
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result p2

    if-eqz p2, :cond_1d

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p2

    if-eqz p2, :cond_1d

    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    sget-object p3, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_ALBUM:Lcom/metamoji/ui/PopupCommand;

    if-eq p2, p3, :cond_1d

    .line 521
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_userGroup:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 524
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    sget-object p3, Lcom/metamoji/ui/PopupCommand;->SENDWINDOW_PRINT:Lcom/metamoji/ui/PopupCommand;

    .line 540
    iget-object v1, p0, Lcom/metamoji/ex/SendDialog;->_userToalPageCountView:Landroid/view/View;

    if-ne p2, p3, :cond_1c

    .line 527
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->group_background_up:I

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 528
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_userToalPageCountView:Landroid/view/View;

    .line 529
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/metamoji/noteanytime/R$dimen;->groupPaddingLeft:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 530
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->groupPaddingTop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 531
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/metamoji/noteanytime/R$dimen;->groupPaddingRight:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 532
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/metamoji/noteanytime/R$dimen;->groupPaddingBottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 528
    invoke-virtual {p2, p3, v0, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 535
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_userSendTypeView:Landroid/view/View;

    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 540
    :cond_1c
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->group_up_top:I

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 541
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_userToalPageCountView:Landroid/view/View;

    .line 542
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->groupPaddingLeft:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 543
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/metamoji/noteanytime/R$dimen;->groupPaddingTop:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 544
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/metamoji/noteanytime/R$dimen;->groupPaddingRight:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 545
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/metamoji/noteanytime/R$dimen;->groupPaddingBottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 541
    invoke-virtual {p2, p3, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 548
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_userSendTypeView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 549
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_userSendTypeView:Landroid/view/View;

    sget p3, Lcom/metamoji/noteanytime/R$drawable;->group_up_btm:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 550
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_userSendTypeView:Landroid/view/View;

    .line 551
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/metamoji/noteanytime/R$dimen;->groupPaddingLeft:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 552
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->groupPaddingTop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 553
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/metamoji/noteanytime/R$dimen;->groupPaddingRight:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 554
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/metamoji/noteanytime/R$dimen;->groupPaddingBottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 550
    invoke-virtual {p2, p3, v0, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_b

    .line 560
    :cond_1d
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_userGroup:Landroid/view/View;

    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 565
    :goto_b
    invoke-virtual {p0}, Lcom/metamoji/ex/SendDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 566
    sget p3, Lcom/metamoji/noteanytime/R$id;->execBtn:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiButton;

    iput-object p3, p0, Lcom/metamoji/ex/SendDialog;->_execBtn:Lcom/metamoji/ui/common/UiButton;

    .line 567
    invoke-direct {p0}, Lcom/metamoji/ex/SendDialog;->getExecBtnTitleId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    .line 569
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_execBtn:Lcom/metamoji/ui/common/UiButton;

    new-instance p3, Lcom/metamoji/ex/SendDialog$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ex/SendDialog$2;-><init>(Lcom/metamoji/ex/SendDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    sget-object p2, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_APPLICATION:Lcom/metamoji/ui/PopupCommand;

    iget-object p3, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    if-eq p2, p3, :cond_20

    sget-object p2, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_FILE:Lcom/metamoji/ui/PopupCommand;

    iget-object p3, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    if-eq p2, p3, :cond_20

    sget-object p2, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_WEBDAV:Lcom/metamoji/ui/PopupCommand;

    iget-object p3, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    if-ne p2, p3, :cond_1e

    goto :goto_c

    .line 583
    :cond_1e
    sget-object p2, Lcom/metamoji/ui/PopupCommand;->SENDWINDOW_PRINT:Lcom/metamoji/ui/PopupCommand;

    iget-object p3, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    if-ne p2, p3, :cond_1f

    .line 584
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_type:Lcom/metamoji/ex/SendDialog$Type;

    invoke-direct {p0, p2, p1}, Lcom/metamoji/ex/SendDialog;->setSelectedType(Lcom/metamoji/ex/SendDialog$Type;Landroid/view/View;)V

    .line 586
    :cond_1f
    sget p2, Lcom/metamoji/noteanytime/R$id;->pageAllBtn:I

    invoke-direct {p0, p2, p1}, Lcom/metamoji/ex/SendDialog;->adjustsPageCheckedState(ILandroid/view/View;)V

    goto :goto_d

    .line 580
    :cond_20
    :goto_c
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_type:Lcom/metamoji/ex/SendDialog$Type;

    invoke-direct {p0, p2, p1}, Lcom/metamoji/ex/SendDialog;->setSelectedType(Lcom/metamoji/ex/SendDialog$Type;Landroid/view/View;)V

    :goto_d
    if-eqz v2, :cond_21

    .line 589
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result p2

    if-eqz p2, :cond_21

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p2

    if-eqz p2, :cond_21

    .line 591
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_userRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    iget p3, p0, Lcom/metamoji/ex/SendDialog;->_userRadioGroupCurrentButton:I

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    .line 593
    iget-object p2, p0, Lcom/metamoji/ex/SendDialog;->_mergePDFSwitch:Lcom/metamoji/ui/common/UiSwitch;

    iget-boolean p3, p0, Lcom/metamoji/ex/SendDialog;->_mergePDFSwitchChecked:Z

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 598
    :cond_21
    invoke-direct {p0}, Lcom/metamoji/ex/SendDialog;->updateView()V

    .line 600
    invoke-virtual {p0, p1}, Lcom/metamoji/ex/SendDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1142
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1144
    const-string v0, "Type"

    iget-object v1, p0, Lcom/metamoji/ex/SendDialog;->_type:Lcom/metamoji/ex/SendDialog$Type;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1145
    const-string v0, "TextEnabled"

    iget-boolean v1, p0, Lcom/metamoji/ex/SendDialog;->textEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1151
    const-string v0, "Command"

    iget-object v1, p0, Lcom/metamoji/ex/SendDialog;->_command:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1159
    const-string v0, "FromPageNum"

    iget v1, p0, Lcom/metamoji/ex/SendDialog;->_fromPageNum:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1160
    const-string v0, "ToPageNum"

    iget v1, p0, Lcom/metamoji/ex/SendDialog;->_toPageNum:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1162
    const-string v0, "UserDicList"

    iget-object v1, p0, Lcom/metamoji/ex/SendDialog;->_userDicList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1163
    const-string v0, "SelectedUserDicList"

    iget-object v1, p0, Lcom/metamoji/ex/SendDialog;->_selectedUserDicList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1165
    const-string v0, "UserRadioGroupCurrentButton"

    iget v1, p0, Lcom/metamoji/ex/SendDialog;->_userRadioGroupCurrentButton:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1167
    const-string v0, "MergePDFSwitchChecked"

    iget-boolean v1, p0, Lcom/metamoji/ex/SendDialog;->_mergePDFSwitchChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1169
    sget-object v0, Lcom/metamoji/ex/SendDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 728
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onStart()V

    return-void
.end method
