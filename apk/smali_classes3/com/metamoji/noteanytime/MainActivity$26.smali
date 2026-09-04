.class Lcom/metamoji/noteanytime/MainActivity$26;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->deleteFolder(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

.field final synthetic val$targetFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2105
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$26;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$26;->val$targetFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iput-object p3, p0, Lcom/metamoji/noteanytime/MainActivity$26;->val$folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    return-void

    .line 2113
    :cond_0
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$26;->val$targetFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/metamoji/noteanytime/MainActivity$26$1;

    invoke-direct {p2, p0}, Lcom/metamoji/noteanytime/MainActivity$26$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$26;)V

    invoke-static {p1, p2}, Lcom/metamoji/noteanytime/MainActivity;->doAutoSyncDrive(Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IDoAutoSyncDriveBlock;)V

    return-void

    .line 2110
    :cond_1
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$26;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$26;->val$targetFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$26;->val$folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p1, p2, v0}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$smdeleteFolderAndMoveToTrashNote(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void
.end method
