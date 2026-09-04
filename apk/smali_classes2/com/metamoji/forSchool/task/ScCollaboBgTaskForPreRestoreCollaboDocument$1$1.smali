.class Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$1;
.super Ljava/lang/Object;
.source "ScCollaboBgTaskForPreRestoreCollaboDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1;

.field final synthetic val$mgr:Lcom/metamoji/dvm/fw/DvmDocumentManager;

.field final synthetic val$newDocId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1;Lcom/metamoji/dvm/fw/DvmDocumentManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$1;->this$1:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1;

    iput-object p2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$1;->val$mgr:Lcom/metamoji/dvm/fw/DvmDocumentManager;

    iput-object p3, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$1;->val$newDocId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$1;->val$mgr:Lcom/metamoji/dvm/fw/DvmDocumentManager;

    iget-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$1;->val$newDocId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->deleteDocument(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    .line 64
    invoke-static {}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->getInstance()Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->stopSync(Z)V

    return-void
.end method
