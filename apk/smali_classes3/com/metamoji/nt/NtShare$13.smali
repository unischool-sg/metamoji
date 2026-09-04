.class Lcom/metamoji/nt/NtShare$13;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare;->shareAsAtshare(Lcom/metamoji/nt/NtDocument;[Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lcom/metamoji/nt/NtShare$ISendAction;

.field final synthetic val$addressArray:[Ljava/lang/String;

.field final synthetic val$baseName:Ljava/lang/String;

.field final synthetic val$doc:Lcom/metamoji/nt/NtDocument;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 871
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$13;->val$doc:Lcom/metamoji/nt/NtDocument;

    iput-object p2, p0, Lcom/metamoji/nt/NtShare$13;->val$baseName:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/NtShare$13;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    iput-object p4, p0, Lcom/metamoji/nt/NtShare$13;->val$addressArray:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 874
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$13;->val$doc:Lcom/metamoji/nt/NtDocument;

    iget-object v1, p0, Lcom/metamoji/nt/NtShare$13;->val$baseName:Ljava/lang/String;

    const-string v2, ".btshare"

    invoke-static {v0, v1, v2}, Lcom/metamoji/nt/NtShare;->getSavingFilename(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 878
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v10, 0x0

    .line 880
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 881
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/nt/NtShare$13;->val$doc:Lcom/metamoji/nt/NtDocument;

    sget-object v8, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->SHARED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/metamoji/nt/NtDocument;->exportAsHayabusadoc(Ljava/io/File;Ljava/util/Map;Ljava/lang/StringBuffer;Lcom/metamoji/nt/INtProgressUI;ZZLcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 883
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 884
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 887
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_ExportError:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v10, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 891
    :goto_0
    const-string v1, "NtShare#shareAsShare: caught an unexpected exception."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 892
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_ExportError:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v10

    move-object v10, v0

    :cond_1
    :goto_1
    if-eqz v10, :cond_2

    .line 898
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtShare$13$1;

    invoke-direct {v1, p0, v10}, Lcom/metamoji/nt/NtShare$13$1;-><init>(Lcom/metamoji/nt/NtShare$13;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void

    .line 914
    :cond_2
    iget-object v1, p0, Lcom/metamoji/nt/NtShare$13;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    iget-object v0, p0, Lcom/metamoji/nt/NtShare$13;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/metamoji/nt/NtShare$13;->val$addressArray:[Ljava/lang/String;

    const-string v3, "application/vnd.metamoji.btshare"

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/metamoji/nt/NtShare$ISendAction;->sendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
