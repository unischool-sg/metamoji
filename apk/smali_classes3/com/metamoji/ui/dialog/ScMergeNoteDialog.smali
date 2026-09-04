.class public Lcom/metamoji/ui/dialog/ScMergeNoteDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ScMergeNoteDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;,
        Lcom/metamoji/ui/dialog/ScMergeNoteDialog$DragListener;,
        Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListItemData;
    }
.end annotation


# instance fields
.field public m_docIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m_driveId:Ljava/lang/String;

.field m_listDataAdapter:Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;

.field m_mergeButton:Landroid/widget/LinearLayout;

.field m_noteListView:Lcom/metamoji/forSchool/ui/ScListView;

.field m_titleTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$yXl8ceIn02UULAvJ-RKOVOSTaWI(Lcom/metamoji/ui/dialog/ScMergeNoteDialog;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->lambda$onDone$2(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 133
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_docIds:Ljava/util/ArrayList;

    .line 126
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_driveId:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_listDataAdapter:Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;

    return-void
.end method

.method private getDocumentTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 143
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_NoTitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_driveId:Ljava/lang/String;

    invoke-static {v1}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v1, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method private initByArguments()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onCreateView$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 170
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

    .line 171
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p1, 0x42

    if-ne p0, p1, :cond_1

    .line 172
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$onCreateView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 215
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method private synthetic lambda$onDone$2(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
    .locals 4

    .line 281
    invoke-static {p2}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListViewFragment(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    move-result-object p2

    const/4 v0, 0x0

    .line 284
    invoke-virtual {p2, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->changeMultiSelectMode(Z)V

    .line 286
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_listDataAdapter:Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListItemData;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListItemData;->docId:Ljava/lang/String;

    .line 287
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 288
    :goto_0
    iget-object v3, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_listDataAdapter:Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;

    invoke-virtual {v3}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 289
    iget-object v3, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_listDataAdapter:Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;

    invoke-virtual {v3, v0}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListItemData;

    .line 290
    iget-object v3, v3, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListItemData;->docId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_driveId:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editCopiedNoteInDrive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 235
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onActivityCreated(Landroid/os/Bundle;)V

    .line 237
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_listDataAdapter:Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;

    if-nez p1, :cond_1

    .line 238
    new-instance p1, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;-><init>(Lcom/metamoji/ui/dialog/ScMergeNoteDialog;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_listDataAdapter:Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;

    .line 239
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_docIds:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    invoke-direct {p0, v0}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->getDocumentTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    new-instance v2, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListItemData;

    invoke-direct {v2, p0, v0, v1}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListItemData;-><init>(Lcom/metamoji/ui/dialog/ScMergeNoteDialog;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_listDataAdapter:Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_noteListView:Lcom/metamoji/forSchool/ui/ScListView;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_listDataAdapter:Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;

    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/ui/ScListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;->updateContext(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 157
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->initByArguments()V

    .line 159
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_merge_note:I

    iput v0, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->mViewId:I

    .line 160
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MERGE_NOTES_DLG_TITLE:I

    iput v0, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->mTitleId:I

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->mDone:Z

    .line 162
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->mBack:Z

    const/4 v1, 0x1

    .line 163
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->mCancel:Z

    .line 165
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->mV4Compatible:Z

    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 168
    sget p2, Lcom/metamoji/noteanytime/R$id;->merged_note_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_titleTextView:Landroid/widget/TextView;

    .line 169
    new-instance p3, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 178
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_docIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 179
    invoke-direct {p0, p2}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->getDocumentTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 180
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_titleTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    sget p2, Lcom/metamoji/noteanytime/R$id;->listView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/forSchool/ui/ScListView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_noteListView:Lcom/metamoji/forSchool/ui/ScListView;

    .line 184
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_listDataAdapter:Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;

    if-eqz p3, :cond_0

    .line 185
    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/ScListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_noteListView:Lcom/metamoji/forSchool/ui/ScListView;

    new-instance p3, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$DragListener;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$DragListener;-><init>(Lcom/metamoji/ui/dialog/ScMergeNoteDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/ScListView;->setDragListener(Lcom/metamoji/ui/cabinet/SimpleDragListener;)V

    .line 188
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_noteListView:Lcom/metamoji/forSchool/ui/ScListView;

    invoke-virtual {p2, v1}, Lcom/metamoji/forSchool/ui/ScListView;->setSortable(Z)V

    .line 189
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_noteListView:Lcom/metamoji/forSchool/ui/ScListView;

    new-instance p3, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$1;-><init>(Lcom/metamoji/ui/dialog/ScMergeNoteDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/ScListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 199
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_noteListView:Lcom/metamoji/forSchool/ui/ScListView;

    new-instance p3, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/ScListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    sget p2, Lcom/metamoji/noteanytime/R$id;->mergeBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_mergeButton:Landroid/widget/LinearLayout;

    .line 221
    new-instance p3, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$2;-><init>(Lcom/metamoji/ui/dialog/ScMergeNoteDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getValidDocumentTitleError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 272
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 274
    invoke-static {v2, v1, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 278
    :cond_1
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    .line 280
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    new-instance v1, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/ui/dialog/ScMergeNoteDialog;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void

    .line 268
    :cond_2
    :goto_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->CreateShareNoteDlg_Error_No_Title:I

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 257
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
