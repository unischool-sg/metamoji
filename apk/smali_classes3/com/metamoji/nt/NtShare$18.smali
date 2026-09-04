.class Lcom/metamoji/nt/NtShare$18;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare;->shareAsCSVFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtShare$ISendAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lcom/metamoji/nt/NtShare$ISendAction;

.field final synthetic val$csvText:Ljava/lang/String;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$outputBOM:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1819
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$18;->val$fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/nt/NtShare$18;->val$csvText:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/NtShare$18;->val$encoding:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/metamoji/nt/NtShare$18;->val$outputBOM:Z

    iput-object p5, p0, Lcom/metamoji/nt/NtShare$18;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1822
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/nt/NtShare$18;->val$fileName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1823
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$18;->val$csvText:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/nt/NtShare$18;->val$encoding:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/metamoji/nt/NtShare$18;->val$outputBOM:Z

    invoke-static {v1, v0, v2, v3}, Lcom/metamoji/cm/CmUtils;->writeCSVToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$18;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    iget-object v3, p0, Lcom/metamoji/nt/NtShare$18;->val$fileName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v2, "text/csv"

    invoke-interface/range {v0 .. v5}, Lcom/metamoji/nt/NtShare$ISendAction;->sendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 1826
    :cond_0
    const-string v0, "NtShare#shareAsCSVFile: writeStringToFile() failed."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void
.end method
