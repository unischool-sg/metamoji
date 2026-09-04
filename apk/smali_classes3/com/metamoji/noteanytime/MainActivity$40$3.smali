.class Lcom/metamoji/noteanytime/MainActivity$40$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$40;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$40;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$40;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2645
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$40$3;->this$0:Lcom/metamoji/noteanytime/MainActivity$40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2649
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$40$3;->this$0:Lcom/metamoji/noteanytime/MainActivity$40;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$40;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$40$3;->this$0:Lcom/metamoji/noteanytime/MainActivity$40;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$40;->val$currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$smupdateCabinetState(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void
.end method
