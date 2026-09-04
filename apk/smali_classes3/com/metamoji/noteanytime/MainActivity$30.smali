.class Lcom/metamoji/noteanytime/MainActivity$30;
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

.field final synthetic val$folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

.field final synthetic val$fromData:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

.field final synthetic val$targetFolderInfo:Lcom/metamoji/ui/cabinet/CabinetTreeItem;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2307
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$30;->val$fromData:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$30;->val$targetFolderInfo:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iput-object p3, p0, Lcom/metamoji/noteanytime/MainActivity$30;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p4, p0, Lcom/metamoji/noteanytime/MainActivity$30;->val$folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completion(Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2313
    :cond_0
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$30;->val$fromData:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    iget p1, p1, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_mode:I

    .line 2316
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$30;->val$fromData:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 2314
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$30;->val$targetFolderInfo:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$30;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$30;->val$folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {v0, p1, v1, p1, v2}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$smcopyFolder(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 2316
    :cond_1
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$30;->val$targetFolderInfo:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$30;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$30;->val$folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {v0, p1, v1, v2}, Lcom/metamoji/noteanytime/MainActivity;->moveFolder(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void
.end method
