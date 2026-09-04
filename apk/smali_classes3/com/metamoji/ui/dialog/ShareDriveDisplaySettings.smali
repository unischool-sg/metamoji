.class public Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ShareDriveDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$ViewHolder;
    }
.end annotation


# instance fields
.field private _adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/metamoji/dvm/fw/bean/DvmDriveBean;",
            ">;"
        }
    .end annotation
.end field

.field private _context:Landroid/content/Context;

.field private _driveListView:Lcom/metamoji/ui/cabinet/DriveListView;

.field private _driveToCheck:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/dvm/fw/bean/DvmDriveBean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private _drives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmDriveBean;",
            ">;"
        }
    .end annotation
.end field

.field private _groupId:Ljava/lang/String;

.field private _groupName:Ljava/lang/String;

.field private _groupNameView:Lcom/metamoji/ui/common/UiTextView;


# direct methods
.method static bridge synthetic -$$Nest$fget_context(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->_context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_driveToCheck(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->_driveToCheck:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_drives(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->_drives:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmDriveBean;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->_groupId:Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->_drives:Ljava/util/List;

    .line 83
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p1

    .line 91
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->_groupId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupNameByGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->_groupName:Ljava/lang/String;

    .line 93
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->_driveToCheck:Ljava/util/HashMap;

    .line 94
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->_drives:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 95
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->_driveToCheck:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isHidden()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 276
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 109
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_share_drive_display_settings:I

    iput v0, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->mViewId:I

    .line 110
    sget v0, Lcom/metamoji/noteanytime/R$string;->CABINET_VISIBLE_SELECT_TITLE:I

    iput v0, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->mTitleId:I

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->setRetainInstance(Z)V

    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_0

    return-object p1

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->_context:Landroid/content/Context;

    .line 122
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->_groupName:Ljava/lang/String;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 123
    sget p2, Lcom/metamoji/noteanytime/R$id;->textview_groupname:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiTextView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->_groupNameView:Lcom/metamoji/ui/common/UiTextView;

    if-eqz p2, :cond_1

    .line 125
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->_groupName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->_groupNameView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiTextView;->setVisibility(I)V

    .line 130
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->share_drive_list_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/cabinet/DriveListView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->_driveListView:Lcom/metamoji/ui/cabinet/DriveListView;

    .line 131
    invoke-virtual {p2, p3}, Lcom/metamoji/ui/cabinet/DriveListView;->setDividerHeight(I)V

    .line 133
    new-instance p2, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->_drives:Ljava/util/List;

    invoke-direct {p2, p0, v0, p3, v1}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;-><init>(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->_adapter:Landroid/widget/ArrayAdapter;

    .line 208
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->_driveListView:Lcom/metamoji/ui/cabinet/DriveListView;

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/cabinet/DriveListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 216
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onDestroyView()V

    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 8

    .line 222
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->_drives:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 225
    iget-object v4, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->_driveToCheck:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 226
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "hidden"

    const-string v7, "id"

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isHidden()Z

    move-result v5

    if-nez v5, :cond_1

    .line 228
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 229
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 230
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 234
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 235
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 236
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 243
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$2;-><init>(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;Ljava/util/ArrayList;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    .line 270
    :cond_3
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method
