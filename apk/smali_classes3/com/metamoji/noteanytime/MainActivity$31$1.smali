.class Lcom/metamoji/noteanytime/MainActivity$31$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$31;->completion(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$31;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$31;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2328
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$31$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$31;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2331
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$31$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$31;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$31;->val$fromData:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$31$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$31;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$31;->val$targetFolderInfo:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$31$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$31;

    iget-object v2, v2, Lcom/metamoji/noteanytime/MainActivity$31;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v3, p0, Lcom/metamoji/noteanytime/MainActivity$31$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$31;

    iget-object v3, v3, Lcom/metamoji/noteanytime/MainActivity$31;->val$currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$smcopyNote(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void
.end method
