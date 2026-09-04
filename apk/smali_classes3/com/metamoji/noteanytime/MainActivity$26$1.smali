.class Lcom/metamoji/noteanytime/MainActivity$26$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/metamoji/noteanytime/MainActivity$IDoAutoSyncDriveBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$26;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$26;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$26;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2113
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$26$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completion(Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2119
    :cond_0
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$26$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$26;

    iget-object p1, p1, Lcom/metamoji/noteanytime/MainActivity$26;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$26$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$26;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$26;->val$targetFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$26$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$26;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$26;->val$folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$smdeleteFolderSub(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;ZLcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void
.end method
