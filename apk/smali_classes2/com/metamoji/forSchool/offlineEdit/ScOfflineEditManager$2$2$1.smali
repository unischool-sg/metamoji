.class Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$2$1;
.super Ljava/lang/Object;
.source "ScOfflineEditManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$2;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$2$1;->this$2:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$2$1;->this$2:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$2;

    iget-object v0, v0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$2;->this$1:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;

    iget-object v0, v0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;->this$0:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->updateOfflineEditModeInfo(Z)V

    return-void
.end method
