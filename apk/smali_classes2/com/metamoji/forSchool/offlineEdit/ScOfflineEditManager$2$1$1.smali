.class Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$1$1;
.super Ljava/lang/Object;
.source "ScOfflineEditManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$1;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 322
    iput-object p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$1$1;->this$2:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$1$1;->this$2:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$1;->this$1:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;

    iget-object v0, v0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->setEditLayerEditable(Z)V

    return-void
.end method
