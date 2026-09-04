.class Lcom/metamoji/nt/NtShare$16;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare;->shareAsM4a(Ljava/io/File;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lcom/metamoji/nt/NtShare$ISendAction;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$srcFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1023
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$16;->val$filename:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/nt/NtShare$16;->val$srcFile:Ljava/io/File;

    iput-object p3, p0, Lcom/metamoji/nt/NtShare$16;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 1031
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/nt/NtShare$16;->val$filename:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1032
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$16;->val$srcFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1033
    const-string v0, "NtShare#shareAsM4a: copyFile() failed."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 1036
    :goto_0
    const-string v2, "NtShare#shareAsM4a: caught an unexpected exception."

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1039
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$16;->val$filename:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/nt/NtShare$16;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    const-string v3, "audio/x-m4a"

    invoke-static {v1, v3, v0, v2}, Lcom/metamoji/nt/NtShare;->shareFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method
