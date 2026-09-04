.class Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1;
.super Lcom/metamoji/sd/SdSuccessBlock;
.source "ScCollaboBgTaskForPreRestoreCollaboDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1;->this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument;

    invoke-direct {p0}, Lcom/metamoji/sd/SdSuccessBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1;->getArgument()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "documentId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 58
    new-instance v6, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$1;

    invoke-direct {v6, p0, v0, v4}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$1;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1;Lcom/metamoji/dvm/fw/DvmDocumentManager;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v4}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v5

    const/4 v0, 0x0

    if-nez v5, :cond_0

    .line 69
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    return-object v0

    .line 73
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v7

    new-instance v1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-object v0
.end method
