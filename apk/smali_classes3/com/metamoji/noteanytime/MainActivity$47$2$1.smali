.class Lcom/metamoji/noteanytime/MainActivity$47$2$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$47$2;->onCompleted(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/noteanytime/MainActivity$47$2;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$47$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3098
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$47$2$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$47$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3102
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$47$2$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$47$2;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$47$2;->val$result:Lcom/metamoji/cm/mutable/Mutable;

    invoke-virtual {v0}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3103
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3105
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$47$2$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$47$2;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$47$2;->val$result:Lcom/metamoji/cm/mutable/Mutable;

    invoke-virtual {v1}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-static {v0, v1}, Lcom/metamoji/noteanytime/MainActivity;->doImportFile(Landroidx/fragment/app/FragmentActivity;Ljava/io/File;)V

    :cond_0
    return-void
.end method
