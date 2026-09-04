.class Lcom/metamoji/noteanytime/MainActivity$28;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->deleteFolderAndMoveToTrashNote(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
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
.method constructor <init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2162
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$28;->val$targetFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$28;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/metamoji/noteanytime/MainActivity$28;->val$folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2165
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$28;->val$targetFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/metamoji/noteanytime/MainActivity$28$1;

    invoke-direct {p2, p0}, Lcom/metamoji/noteanytime/MainActivity$28$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$28;)V

    invoke-static {p1, p2}, Lcom/metamoji/noteanytime/MainActivity;->doAutoSyncDrive(Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IDoAutoSyncDriveBlock;)V

    return-void
.end method
