.class public Lcom/metamoji/ui/dialog/DocumentListDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "DocumentListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/DocumentListDialog$ListAdapter;
    }
.end annotation


# static fields
.field public static final DICKEY_DOC_ID:Ljava/lang/String; = "docId"

.field public static final DICKEY_DRIVE_ID:Ljava/lang/String; = "driveId"

.field public static final DICKEY_PATH:Ljava/lang/String; = "path"


# instance fields
.field public displayNoteNameOnly:Z

.field public isShowCancelButton:Z

.field public isShowCloseButton:Z

.field m_cashListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field m_listAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field m_message:Ljava/lang/String;

.field m_messageId:I

.field public openNoteIfTapped:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 105
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->m_message:Ljava/lang/String;

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->isShowCloseButton:Z

    const/4 v1, 0x1

    .line 95
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->isShowCancelButton:Z

    .line 96
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->displayNoteNameOnly:Z

    .line 97
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->openNoteIfTapped:Z

    return-void
.end method


# virtual methods
.method public addPathInfoWithDriveId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 217
    :cond_0
    new-instance v0, Lcom/metamoji/ui/dialog/DocumentListDialog$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/metamoji/ui/dialog/DocumentListDialog$2;-><init>(Lcom/metamoji/ui/dialog/DocumentListDialog;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    if-nez p1, :cond_2

    .line 221
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->m_cashListData:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 222
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->m_cashListData:Ljava/util/ArrayList;

    .line 224
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->m_cashListData:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 226
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method handleItemClick(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->openNoteIfTapped:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->openNoteIfTapped:Z

    .line 243
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/DocumentListDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    .line 245
    const-string v0, "driveId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move-object v4, v2

    goto :goto_1

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 246
    :goto_1
    const-string v0, "docId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 247
    invoke-static {v3}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListViewFragment(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    move-result-object v6

    .line 250
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/dialog/DocumentListDialog;->onDone(Landroid/view/View;)V

    .line 252
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v1, Lcom/metamoji/ui/dialog/DocumentListDialog$3;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/ui/dialog/DocumentListDialog$3;-><init>(Lcom/metamoji/ui/dialog/DocumentListDialog;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 122
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_doc_list:I

    iput v0, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->mViewId:I

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->mDone:Z

    .line 124
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->isShowCloseButton:Z

    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->mClose:Z

    .line 125
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->isShowCancelButton:Z

    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->mCancel:Z

    .line 126
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->mBack:Z

    .line 128
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_0

    return-object p1

    .line 136
    :cond_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->messageTextView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 137
    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->m_message:Ljava/lang/String;

    if-nez p3, :cond_1

    .line 138
    iget p3, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->m_messageId:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :goto_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->listView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 144
    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    if-nez p3, :cond_3

    .line 145
    new-instance p3, Lcom/metamoji/ui/dialog/DocumentListDialog$ListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/DocumentListDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/metamoji/ui/dialog/DocumentListDialog$ListAdapter;-><init>(Lcom/metamoji/ui/dialog/DocumentListDialog;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    .line 147
    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->m_cashListData:Ljava/util/ArrayList;

    if-eqz p3, :cond_3

    .line 148
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 149
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 151
    :cond_2
    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->m_cashListData:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    const/4 p3, 0x0

    .line 152
    iput-object p3, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->m_cashListData:Ljava/util/ArrayList;

    .line 155
    :cond_3
    iget-object p3, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance p3, Lcom/metamoji/ui/dialog/DocumentListDialog$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/DocumentListDialog$1;-><init>(Lcom/metamoji/ui/dialog/DocumentListDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-object p1
.end method

.method public setDlgTitleResourceId(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->mTitleId:I

    return-void
.end method

.method public setMessage(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->m_messageId:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog;->m_message:Ljava/lang/String;

    return-void
.end method
