.class Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1;
.super Ljava/lang/Object;
.source "ScOfflineEditManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1;->action(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1;->this$1:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1;

    iput-object p2, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 227
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    const-class v1, Lcom/metamoji/noteanytime/EditorActivity;

    new-instance v2, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1$1;

    invoke-direct {v2, p0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1$1;-><init>(Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Ljava/lang/Class;Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method
