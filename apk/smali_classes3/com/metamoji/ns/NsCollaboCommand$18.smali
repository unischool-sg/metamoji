.class Lcom/metamoji/ns/NsCollaboCommand$18;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->createInvitationCollaboFile(Lcom/metamoji/nt/NtDocument;Ljava/io/File;Lcom/metamoji/ns/INsCreateCollaboFileCompletionAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$completionAction:Lcom/metamoji/ns/INsCreateCollaboFileCompletionAction;

.field final synthetic val$doc:Lcom/metamoji/nt/NtDocument;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDocument;Ljava/io/File;Lcom/metamoji/ns/INsCreateCollaboFileCompletionAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1498
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$18;->val$doc:Lcom/metamoji/nt/NtDocument;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$18;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboCommand$18;->val$completionAction:Lcom/metamoji/ns/INsCreateCollaboFileCompletionAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1505
    :try_start_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1507
    :try_start_1
    iget-object v3, p0, Lcom/metamoji/ns/NsCollaboCommand$18;->val$doc:Lcom/metamoji/nt/NtDocument;

    iget-object v4, p0, Lcom/metamoji/ns/NsCollaboCommand$18;->val$file:Ljava/io/File;

    sget-object v10, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->SHARED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/metamoji/nt/NtDocument;->exportAsHayabusadoc(Ljava/io/File;Ljava/util/Map;Ljava/lang/StringBuffer;Lcom/metamoji/nt/INtProgressUI;ZZLcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1509
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1510
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1513
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_ExportError:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1517
    :try_start_2
    const-string v3, "NtShare#shareAsShare: caught an unexpected exception."

    invoke-static {v0, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1518
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_ExportError:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 1524
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    new-instance v4, Lcom/metamoji/ns/NsCollaboCommand$18$1;

    invoke-direct {v4, p0, v0}, Lcom/metamoji/ns/NsCollaboCommand$18$1;-><init>(Lcom/metamoji/ns/NsCollaboCommand$18;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1535
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$18;->val$completionAction:Lcom/metamoji/ns/INsCreateCollaboFileCompletionAction;

    invoke-interface {v0, v1, v2}, Lcom/metamoji/ns/INsCreateCollaboFileCompletionAction;->onFileCompleted(ZLjava/lang/String;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 1533
    :try_start_3
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$18;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1535
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboCommand$18;->val$completionAction:Lcom/metamoji/ns/INsCreateCollaboFileCompletionAction;

    invoke-interface {v2, v1, v0}, Lcom/metamoji/ns/INsCreateCollaboFileCompletionAction;->onFileCompleted(ZLjava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    iget-object v3, p0, Lcom/metamoji/ns/NsCollaboCommand$18;->val$completionAction:Lcom/metamoji/ns/INsCreateCollaboFileCompletionAction;

    invoke-interface {v3, v1, v2}, Lcom/metamoji/ns/INsCreateCollaboFileCompletionAction;->onFileCompleted(ZLjava/lang/String;)V

    .line 1536
    throw v0
.end method
