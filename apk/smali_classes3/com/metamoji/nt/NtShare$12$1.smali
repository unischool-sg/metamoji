.class Lcom/metamoji/nt/NtShare$12$1;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Lcom/metamoji/nt/NtShare$INtShareCreateFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtShare$12;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtShare$12;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 763
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$12$1;->this$0:Lcom/metamoji/nt/NtShare$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Ljava/io/File;I)Ljava/io/File;
    .locals 11

    .line 767
    iget-object p1, p0, Lcom/metamoji/nt/NtShare$12$1;->this$0:Lcom/metamoji/nt/NtShare$12;

    iget-object p1, p1, Lcom/metamoji/nt/NtShare$12;->val$userInfos:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 768
    const-string p2, "nickname"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 770
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$12$1;->this$0:Lcom/metamoji/nt/NtShare$12;

    iget-object v0, v0, Lcom/metamoji/nt/NtShare$12;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-static {p2}, Lcom/metamoji/nt/NtDocument;->getDocumentTitleForFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 771
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 772
    :cond_0
    const-string/jumbo p2, "unknown"

    .line 774
    :cond_1
    const-string v0, "%s.atdoc"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 778
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$12$1;->this$0:Lcom/metamoji/nt/NtShare$12;

    iget-object v0, v0, Lcom/metamoji/nt/NtShare$12;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 779
    const-string/jumbo v0, "userId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    return-object v1

    .line 783
    :cond_2
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetSchoolLayerInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    move-object v10, p1

    goto :goto_0

    :cond_3
    move-object v10, v1

    .line 788
    :goto_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 790
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;

    move-result-object p1

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 791
    :try_start_1
    iget-object p1, p0, Lcom/metamoji/nt/NtShare$12$1;->this$0:Lcom/metamoji/nt/NtShare$12;

    iget-object v2, p1, Lcom/metamoji/nt/NtShare$12;->val$doc:Lcom/metamoji/nt/NtDocument;

    iget-object p1, p0, Lcom/metamoji/nt/NtShare$12$1;->this$0:Lcom/metamoji/nt/NtShare$12;

    iget-object v9, p1, Lcom/metamoji/nt/NtShare$12;->val$recordings:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/metamoji/nt/NtDocument;->exportAsHayabusadoc(Ljava/io/File;Ljava/util/Map;Ljava/lang/StringBuffer;Lcom/metamoji/nt/INtProgressUI;ZZLcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 793
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_4

    .line 794
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 797
    :cond_4
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_ExportError:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_5
    move-object p1, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    move-object v3, v1

    .line 801
    :goto_1
    const-string p2, "NtShare#shareAsAtdoc: caught an unexpected exception."

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 802
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_ExportError:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_6

    .line 808
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v0, Lcom/metamoji/nt/NtShare$12$1$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/nt/NtShare$12$1$1;-><init>(Lcom/metamoji/nt/NtShare$12$1;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-object v1

    :cond_6
    return-object v3
.end method
