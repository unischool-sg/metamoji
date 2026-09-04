.class Lcom/metamoji/nt/NtShare$10;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare;->shareAsAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lcom/metamoji/nt/NtShare$ISendAction;

.field final synthetic val$baseName:Ljava/lang/String;

.field final synthetic val$doc:Lcom/metamoji/nt/NtDocument;

.field final synthetic val$recordings:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Lcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 679
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$10;->val$doc:Lcom/metamoji/nt/NtDocument;

    iput-object p2, p0, Lcom/metamoji/nt/NtShare$10;->val$baseName:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/NtShare$10;->val$recordings:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    iput-object p4, p0, Lcom/metamoji/nt/NtShare$10;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 682
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$10;->val$doc:Lcom/metamoji/nt/NtDocument;

    iget-object v1, p0, Lcom/metamoji/nt/NtShare$10;->val$baseName:Ljava/lang/String;

    const-string v2, ".atdoc"

    invoke-static {v0, v1, v2}, Lcom/metamoji/nt/NtShare;->getSavingFilename(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 686
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v10, 0x0

    .line 688
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 689
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/nt/NtShare$10;->val$doc:Lcom/metamoji/nt/NtDocument;

    iget-object v8, p0, Lcom/metamoji/nt/NtShare$10;->val$recordings:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetSchoolLayerInfo()Ljava/util/Map;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object v9, v10

    :goto_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v9}, Lcom/metamoji/nt/NtDocument;->exportAsHayabusadoc(Ljava/io/File;Ljava/util/Map;Ljava/lang/StringBuffer;Lcom/metamoji/nt/INtProgressUI;ZZLcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 691
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 692
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 695
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_ExportError:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v10, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 699
    :goto_1
    const-string v1, "NtShare#shareAsAtdoc: caught an unexpected exception."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 700
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_ExportError:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v10

    move-object v10, v0

    :cond_2
    :goto_2
    if-eqz v10, :cond_3

    .line 706
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtShare$10$1;

    invoke-direct {v1, p0, v10}, Lcom/metamoji/nt/NtShare$10$1;-><init>(Lcom/metamoji/nt/NtShare$10;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void

    .line 722
    :cond_3
    iget-object v1, p0, Lcom/metamoji/nt/NtShare$10;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    iget-object v0, p0, Lcom/metamoji/nt/NtShare$10;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v3, "application/vnd.metamoji.atdoc"

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/metamoji/nt/NtShare$ISendAction;->sendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
