.class Lcom/metamoji/noteanytime/MainActivity$31;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/metamoji/noteanytime/MainActivity$IDoAutoSyncDriveBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->pasteForContextmenu(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

.field final synthetic val$fromData:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

.field final synthetic val$targetFolderInfo:Lcom/metamoji/ui/cabinet/CabinetTreeItem;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2321
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$31;->val$fromData:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$31;->val$targetFolderInfo:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iput-object p3, p0, Lcom/metamoji/noteanytime/MainActivity$31;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p4, p0, Lcom/metamoji/noteanytime/MainActivity$31;->val$currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completion(Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2327
    :cond_0
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$31;->val$fromData:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    iget p1, p1, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_mode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2328
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$31$1;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/MainActivity$31$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$31;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void

    .line 2335
    :cond_1
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$31;->val$fromData:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$31;->val$targetFolderInfo:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$31;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$31;->val$currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-static {p1, v0, v1, v2}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$smmoveNote(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void
.end method
