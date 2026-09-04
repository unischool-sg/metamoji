.class Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument$1;
.super Ljava/lang/Object;
.source "ScCollaboBgTaskForRestoreCollaboDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;

.field final synthetic val$finalDocument:Lcom/metamoji/nt/NtDocument;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;Lcom/metamoji/nt/NtDocument;)V
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

    .line 206
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument$1;->this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;

    iput-object p2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument$1;->val$finalDocument:Lcom/metamoji/nt/NtDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 210
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument$1;->val$finalDocument:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ScSchoolManager;->initMode2Info(Lcom/metamoji/nt/NtDocument;)V

    .line 212
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->reloginRoomSocketWithDelay(Z)V

    return-void
.end method
