.class public Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "StoreServerSelectDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;,
        Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ListAdapter;
    }
.end annotation


# instance fields
.field private m_anyImageView:Landroid/widget/ImageView;

.field private m_anyUrlEdit:Landroid/widget/EditText;

.field private m_anyUrlView:Landroid/view/View;

.field private m_selectIndex:I

.field private m_serverList:Landroid/widget/ListView;

.field private m_serverNamesArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_serverType:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

.field private m_serverURLArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_switch:Lcom/metamoji/ui/common/UiSwitch;

.field private m_tempSwitch:Ljava/lang/Boolean;

.field private m_tempUrl:Ljava/lang/String;

.field private m_url:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetm_selectIndex(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_selectIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetm_serverNamesArray(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverNamesArray:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_serverURLArray(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverURLArray:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mselectAnyUrl(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->selectAnyUrl()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateListEnabled(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->updateListEnabled()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_tempSwitch:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;)V
    .locals 3

    .line 69
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_tempSwitch:Ljava/lang/Boolean;

    .line 71
    iput-object p1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverType:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverURLArray:Ljava/util/List;

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverNamesArray:Ljava/util/List;

    .line 75
    iget-object p1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverURLArray:Ljava/util/List;

    const-string v0, "https://mps-dev.metamoji.com/"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object p1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverNamesArray:Ljava/util/List;

    const-string/jumbo v0, "\uff08\u958b\u767a\u74b0\u5883\uff09"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object p1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverURLArray:Ljava/util/List;

    const-string v0, "https://mps-test.metamoji.com/"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object p1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverNamesArray:Ljava/util/List;

    const-string/jumbo v0, "\uff08\u8a66\u9a13\u74b0\u5883\uff09"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object p1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverURLArray:Ljava/util/List;

    const-string v0, "https://mps-beta.metamoji.com/"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object p1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverNamesArray:Ljava/util/List;

    const-string/jumbo v0, "\uff08\u03b2\u74b0\u5883\uff09"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object p1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverURLArray:Ljava/util/List;

    const-string v0, "https://mps.metamoji.com/"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object p1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverNamesArray:Ljava/util/List;

    const-string/jumbo v0, "\uff08\u672c\u756a\u74b0\u5883\uff09"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    .line 86
    invoke-virtual {p0}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->userDefaultsKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_url:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverType:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    sget-object v1, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->FOR_DC_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/Boolean;

    const-string v1, "DevDigitalCabinetServerCheckMaintInfo"

    invoke-virtual {p1, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_tempSwitch:Ljava/lang/Boolean;

    goto :goto_1

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_url:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-direct {p1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object p1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_tempSwitch:Ljava/lang/Boolean;

    .line 94
    :goto_1
    iget-object p1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_url:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    return-void

    .line 97
    :cond_4
    :goto_2
    sget-object p1, Lcom/metamoji/noteanytime/ModelInfo$BuildOptions;->DIGITAL_CABINET_URL_ROOT:Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_url:Ljava/lang/String;

    return-void
.end method

.method private selectAnyUrl()V
    .locals 2

    .line 194
    iget v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_selectIndex:I

    if-ltz v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    sget v1, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    :cond_0
    const/4 v0, -0x1

    .line 201
    iput v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_selectIndex:I

    .line 202
    iget-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_anyImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setActivated(Z)V

    return-void
.end method

.method private updateListEnabled()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverType:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    sget-object v1, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->FOR_DC_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    if-ne v0, v1, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_switch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 182
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverList:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 183
    iget-object v2, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAlpha(F)V

    .line 184
    iget-object v2, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_anyUrlView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 185
    iget-object v2, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_anyUrlView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 186
    iget-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_anyImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_anyUrlEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 108
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_store_server_select:I

    iput v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->mViewId:I

    .line 109
    sget v0, Lcom/metamoji/noteanytime/R$string;->ServerSelect_Dialog_Title:I

    iput v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->mTitleId:I

    .line 111
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverType:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :cond_0
    const-string/jumbo v0, "\u63a5\u7d9a\u5148\u30e1\u30c7\u30a3\u30a2/EditIt\u30b5\u30fc\u30d0\u30fc\u9078\u629e"

    goto :goto_0

    .line 121
    :cond_1
    const-string/jumbo v0, "\u63a5\u7d9a\u5148\u30ed\u30d3\u30fc\u30b5\u30fc\u30d0\u30fc\u9078\u629e"

    goto :goto_0

    .line 118
    :cond_2
    const-string/jumbo v0, "\u63a5\u7d9a\u5148\u30eb\u30fc\u30c8\u30b5\u30fc\u30d0\u30fc\u9078\u629e"

    :goto_0
    if-eqz v0, :cond_3

    .line 127
    sget v1, Lcom/metamoji/noteanytime/R$id;->dlg_title:I

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 128
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$id;->switchLabel:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiTextView;

    .line 133
    iget-object v1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverType:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    sget-object v2, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->FOR_DC_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    if-ne v1, v2, :cond_4

    const-string/jumbo v1, "\u30e1\u30f3\u30c6\u30ca\u30f3\u30b9\u30c1\u30a7\u30c3\u30af\u3092\u884c\u3046"

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "\uff3b\u63a5\u7d9a\u5148DC\u30b5\u30fc\u30d0\u30fc\u9078\u629e\uff3d\u306e\u8a2d\u5b9a\u3092\u4f7f\u3046"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    sget v0, Lcom/metamoji/noteanytime/R$id;->uiSwitch:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiSwitch;

    iput-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_switch:Lcom/metamoji/ui/common/UiSwitch;

    .line 135
    new-instance v1, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$1;-><init>(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 143
    sget v0, Lcom/metamoji/noteanytime/R$id;->serverList:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverList:Landroid/widget/ListView;

    .line 147
    new-instance v0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ListAdapter;-><init>(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;Landroid/content/Context;)V

    .line 148
    iget-object v1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    iget-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 152
    sget v0, Lcom/metamoji/noteanytime/R$id;->serverText:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_anyUrlView:Landroid/view/View;

    .line 153
    sget v0, Lcom/metamoji/noteanytime/R$id;->url_edit:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_anyUrlEdit:Landroid/widget/EditText;

    .line 154
    new-instance v1, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$2;-><init>(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 162
    sget v0, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_anyImageView:Landroid/widget/ImageView;

    .line 163
    new-instance v1, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$3;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$3;-><init>(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 3

    .line 331
    iget v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_selectIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_anyUrlEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_url:Ljava/lang/String;

    .line 333
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_url:Ljava/lang/String;

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverType:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    sget-object v1, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->FOR_DC_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_switch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_url:Ljava/lang/String;

    .line 344
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 345
    invoke-virtual {p0}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->userDefaultsKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverType:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    sget-object v2, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->FOR_DC_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    if-ne v1, v2, :cond_2

    .line 349
    iget-object v1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_switch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v1

    const-string v2, "DevDigitalCabinetServerCheckMaintInfo"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 352
    :cond_2
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 297
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_url:Ljava/lang/String;

    .line 300
    iget p4, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_selectIndex:I

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p5

    sub-int/2addr p4, p5

    const/4 p5, 0x0

    if-ltz p4, :cond_0

    .line 301
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-ge p4, v0, :cond_0

    .line 302
    invoke-virtual {p1, p4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget p4, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/view/View;->setActivated(Z)V

    .line 304
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 305
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 307
    iput p3, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_selectIndex:I

    .line 310
    iget-object p1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_anyImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 311
    iget-object p1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverList:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 320
    new-instance v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_switch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_tempSwitch:Ljava/lang/Boolean;

    .line 321
    iget-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_anyUrlEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_tempUrl:Ljava/lang/String;

    .line 323
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 209
    invoke-virtual {p0}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 210
    sget v1, Lcom/metamoji/noteanytime/R$id;->serverList:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 211
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ListAdapter;

    iget-object v2, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ListAdapter;->getPosition(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_selectIndex:I

    .line 214
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 217
    iget-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_tempSwitch:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_switch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_tempSwitch:Ljava/lang/Boolean;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_anyUrlEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_tempUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_selectIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 225
    iget-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_anyImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 226
    iget-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_anyUrlEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_1
    invoke-super {p0}, Lcom/metamoji/ui/dialog/UiDialog;->onStart()V

    return-void
.end method

.method userDefaultsKey()Ljava/lang/String;
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->m_serverType:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 367
    :cond_0
    const-string v0, "DevEditItServer"

    return-object v0

    .line 365
    :cond_1
    const-string v0, "DevLobbyServer"

    return-object v0

    .line 363
    :cond_2
    const-string v0, "DevStoreServer"

    return-object v0

    .line 361
    :cond_3
    const-string v0, "DevDigitalCabinetRootServer"

    return-object v0
.end method
