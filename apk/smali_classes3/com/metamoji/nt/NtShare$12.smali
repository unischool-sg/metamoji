.class Lcom/metamoji/nt/NtShare$12;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare;->shareAsMultiUserAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/List;Lcom/metamoji/nt/NtShare$ISendAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lcom/metamoji/nt/NtShare$ISendAction;

.field final synthetic val$doc:Lcom/metamoji/nt/NtDocument;

.field final synthetic val$recordings:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

.field final synthetic val$userInfos:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Lcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 760
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$12;->val$userInfos:Ljava/util/List;

    iput-object p2, p0, Lcom/metamoji/nt/NtShare$12;->val$doc:Lcom/metamoji/nt/NtDocument;

    iput-object p3, p0, Lcom/metamoji/nt/NtShare$12;->val$recordings:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    iput-object p4, p0, Lcom/metamoji/nt/NtShare$12;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 763
    new-instance v0, Lcom/metamoji/nt/NtShare$12$1;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtShare$12$1;-><init>(Lcom/metamoji/nt/NtShare$12;)V

    .line 824
    iget-object v1, p0, Lcom/metamoji/nt/NtShare$12;->val$userInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 826
    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;

    move-result-object v1

    .line 827
    new-instance v2, Ljava/io/File;

    const-string v3, "mmjntsendshared"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 828
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    const/4 v1, 0x0

    .line 829
    invoke-interface {v0, v2, v1}, Lcom/metamoji/nt/NtShare$INtShareCreateFile;->perform(Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    .line 831
    const-string v1, "application/vnd.metamoji.atdoc"

    goto :goto_0

    .line 832
    :cond_0
    iget-object v2, p0, Lcom/metamoji/nt/NtShare$12;->val$doc:Lcom/metamoji/nt/NtDocument;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/metamoji/nt/NtShare;->createZippedFile(Lcom/metamoji/nt/NtDocument;ILcom/metamoji/nt/NtShare$INtShareCreateFile;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 833
    const-string v1, "application/zip"

    :goto_0
    move-object v3, v0

    move-object v4, v1

    if-nez v3, :cond_1

    return-void

    .line 848
    :cond_1
    iget-object v2, p0, Lcom/metamoji/nt/NtShare$12;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    iget-object v0, p0, Lcom/metamoji/nt/NtShare$12;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/metamoji/nt/NtShare$ISendAction;->sendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
