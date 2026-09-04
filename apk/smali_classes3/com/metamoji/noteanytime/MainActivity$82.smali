.class Lcom/metamoji/noteanytime/MainActivity$82;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->showDocumentListIfOfflineEditNoteExist(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$offlineEditDocIds:Ljava/util/List;

.field final synthetic val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

.field final synthetic val$wait:Z


# direct methods
.method constructor <init>(ZLcom/metamoji/cm/ResetableEvent;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5945
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/MainActivity$82;->val$wait:Z

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$82;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    iput-object p3, p0, Lcom/metamoji/noteanytime/MainActivity$82;->val$offlineEditDocIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 5948
    new-instance v0, Lcom/metamoji/ui/dialog/DocumentListDialog;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/DocumentListDialog;-><init>()V

    .line 5949
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_REFLECT_OFFLINE_EDIT:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/DocumentListDialog;->setDlgTitleResourceId(I)V

    const/4 v1, 0x1

    .line 5950
    iput-boolean v1, v0, Lcom/metamoji/ui/dialog/DocumentListDialog;->displayNoteNameOnly:Z

    .line 5951
    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$82$1;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/MainActivity$82$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$82;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/DocumentListDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 5960
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$82;->val$offlineEditDocIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 5962
    const-string v3, "driveId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5963
    const-string v4, "documentId"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5964
    invoke-virtual {v0, v3, v2}, Lcom/metamoji/ui/dialog/DocumentListDialog;->addPathInfoWithDriveId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5968
    :cond_1
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_REFLECT_OFFLINE_EDIT_MESSAGE:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/DocumentListDialog;->setMessage(I)V

    .line 5969
    const-string v1, "DocumentListDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/DocumentListDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method
