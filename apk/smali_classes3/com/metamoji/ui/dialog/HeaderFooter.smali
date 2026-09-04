.class public Lcom/metamoji/ui/dialog/HeaderFooter;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "HeaderFooter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HeaderFooterDialog"


# instance fields
.field private _buttonid:[I

.field _custumBtn:Lcom/metamoji/ui/common/UiRadioButton;

.field private _dlgtitleid:I

.field _group:Lcom/metamoji/ui/common/UiRadioGroup;

.field private _nameid:[I

.field private _selectIndex:I

.field private _styleid:[I

.field private _text:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fget_buttonid(Lcom/metamoji/ui/dialog/HeaderFooter;)[I
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_buttonid:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_dlgtitleid(Lcom/metamoji/ui/dialog/HeaderFooter;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_dlgtitleid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_selectIndex(Lcom/metamoji/ui/dialog/HeaderFooter;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_selectIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_styleid(Lcom/metamoji/ui/dialog/HeaderFooter;)[I
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_styleid:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_text(Lcom/metamoji/ui/dialog/HeaderFooter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_text:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_selectIndex(Lcom/metamoji/ui/dialog/HeaderFooter;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_selectIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_text(Lcom/metamoji/ui/dialog/HeaderFooter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 22
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 24
    sget v0, Lcom/metamoji/noteanytime/R$string;->DocumentSetting_Header:I

    iput v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_dlgtitleid:I

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_selectIndex:I

    .line 32
    sget v0, Lcom/metamoji/noteanytime/R$string;->DocSetting_Style_Page1:I

    sget v1, Lcom/metamoji/noteanytime/R$string;->DocSetting_Style_Page2:I

    sget v2, Lcom/metamoji/noteanytime/R$string;->DocSetting_Style_Title:I

    sget v3, Lcom/metamoji/noteanytime/R$string;->DocSetting_Style_TitleAndDate:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_nameid:[I

    .line 37
    sget v0, Lcom/metamoji/noteanytime/R$string;->DocSetting_Format_Page1:I

    sget v1, Lcom/metamoji/noteanytime/R$string;->DocSetting_Format_Page2:I

    sget v2, Lcom/metamoji/noteanytime/R$string;->DocSetting_Format_Title:I

    sget v3, Lcom/metamoji/noteanytime/R$string;->DocSetting_Format_TitleAndDate:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_styleid:[I

    .line 41
    sget v1, Lcom/metamoji/noteanytime/R$id;->dlg_doc_hed_btn_0:I

    sget v2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_hed_btn_1:I

    sget v3, Lcom/metamoji/noteanytime/R$id;->dlg_doc_hed_btn_2:I

    sget v4, Lcom/metamoji/noteanytime/R$id;->dlg_doc_hed_btn_3:I

    sget v5, Lcom/metamoji/noteanytime/R$id;->dlg_doc_hed_btn_4:I

    sget v6, Lcom/metamoji/noteanytime/R$id;->dlg_doc_hed_btn_5:I

    filled-new-array/range {v1 .. v6}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_buttonid:[I

    return-void
.end method


# virtual methods
.method public back_fromCustom()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_group:Lcom/metamoji/ui/common/UiRadioGroup;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_buttonid:[I

    iget v2, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_selectIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    return-void
.end method

.method public get_selectIndex()I
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_group:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButton()I

    move-result v0

    const/4 v1, -0x1

    .line 152
    iput v1, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_selectIndex:I

    const/4 v1, 0x0

    .line 153
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_buttonid:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 154
    aget v2, v2, v1

    if-ne v2, v0, :cond_0

    .line 155
    iput v1, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_selectIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_1
    :goto_1
    iget v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_selectIndex:I

    return v0
.end method

.method public get_text()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_text:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 147
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    if-eqz p3, :cond_0

    .line 56
    const-string v0, "DialogTitleId"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_dlgtitleid:I

    .line 57
    const-string v0, "EditString"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_text:Ljava/lang/String;

    .line 58
    const-string v0, "SelectIndex"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_selectIndex:I

    .line 60
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_header_footer:I

    iput v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->mViewId:I

    .line 61
    iget v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_dlgtitleid:I

    iput v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->mTitleId:I

    .line 63
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 p2, 0x1

    :goto_0
    const/4 p3, 0x5

    if-ge p2, p3, :cond_2

    .line 69
    iget-object p3, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_buttonid:[I

    aget p3, p3, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiRadioButton;

    .line 70
    iget-object v1, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_nameid:[I

    add-int/lit8 v2, p2, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_styleid:[I

    aget v2, v3, v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setMainTitle(Ljava/lang/CharSequence;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 73
    :cond_2
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_hed_grp:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_group:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 74
    iget-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_buttonid:[I

    iget v1, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_selectIndex:I

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    .line 76
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_hed_btn_5:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioButton;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_custumBtn:Lcom/metamoji/ui/common/UiRadioButton;

    if-eqz p2, :cond_3

    .line 78
    new-instance v0, Lcom/metamoji/ui/dialog/HeaderFooter$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/HeaderFooter$1;-><init>(Lcom/metamoji/ui/dialog/HeaderFooter;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiRadioButton;->setOnClickListener(Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;)V

    .line 95
    iget p2, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_selectIndex:I

    if-ne p2, p3, :cond_3

    .line 96
    iget-object p2, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_custumBtn:Lcom/metamoji/ui/common/UiRadioButton;

    iget-object p3, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_text:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioButton;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 100
    :cond_3
    iget-object p2, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_group:Lcom/metamoji/ui/common/UiRadioGroup;

    new-instance p3, Lcom/metamoji/ui/dialog/HeaderFooter$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/HeaderFooter$2;-><init>(Lcom/metamoji/ui/dialog/HeaderFooter;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/HeaderFooter;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 2

    .line 135
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    .line 136
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/ui/dialog/DocumentSettings;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/DocumentSettings;

    if-eqz p1, :cond_0

    .line 140
    iget v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_dlgtitleid:I

    iget-object v1, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_text:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/dialog/DocumentSettings;->set_HeaderFooterString(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 126
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    const-string v0, "DialogTitleId"

    iget v1, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_dlgtitleid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    const-string v0, "EditString"

    iget-object v1, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_text:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "SelectIndex"

    iget v1, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_selectIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    sget-object v0, Lcom/metamoji/ui/dialog/HeaderFooter;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public set_customString(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 187
    iput v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_selectIndex:I

    .line 188
    iput-object p1, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_text:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_custumBtn:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiRadioButton;->setSubTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public set_dlgtitleid(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_dlgtitleid:I

    return-void
.end method

.method public set_string(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 170
    :cond_0
    iput-object p1, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_text:Ljava/lang/String;

    .line 171
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_styleid:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_2
    :goto_1
    iput v0, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_selectIndex:I

    return-void

    :cond_3
    :goto_2
    const/4 p1, 0x0

    .line 168
    iput p1, p0, Lcom/metamoji/ui/dialog/HeaderFooter;->_selectIndex:I

    return-void
.end method
