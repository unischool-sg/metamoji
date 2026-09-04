.class Lcom/metamoji/nt/NtShare$14;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare;->shareAsTextFile(Ljava/lang/String;Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lcom/metamoji/nt/NtShare$ISendAction;

.field final synthetic val$baseName:Ljava/lang/String;

.field final synthetic val$doc:Lcom/metamoji/nt/NtDocument;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 956
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$14;->val$doc:Lcom/metamoji/nt/NtDocument;

    iput-object p2, p0, Lcom/metamoji/nt/NtShare$14;->val$baseName:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/NtShare$14;->val$text:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/nt/NtShare$14;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 959
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$14;->val$doc:Lcom/metamoji/nt/NtDocument;

    iget-object v1, p0, Lcom/metamoji/nt/NtShare$14;->val$baseName:Ljava/lang/String;

    const-string v2, ".txt"

    invoke-static {v0, v1, v2}, Lcom/metamoji/nt/NtShare;->getSavingFilename(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 960
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 961
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$14;->val$text:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lcom/metamoji/cm/CmUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    iget-object v1, p0, Lcom/metamoji/nt/NtShare$14;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    iget-object v0, p0, Lcom/metamoji/nt/NtShare$14;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v3, "text/plain"

    invoke-interface/range {v1 .. v6}, Lcom/metamoji/nt/NtShare$ISendAction;->sendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 965
    :cond_0
    const-string v0, "NtShare#shareAsTextFile: writeStringToFile() failed."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void
.end method
