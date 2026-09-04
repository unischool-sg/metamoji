.class Lcom/metamoji/ui/BulkImportActivity$2;
.super Ljava/lang/Object;
.source "BulkImportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/BulkImportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/BulkImportActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/BulkImportActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/metamoji/ui/BulkImportActivity$2;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 182
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ui/BulkImportActivity$2;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-static {v0}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$fgetmIsExport(Lcom/metamoji/ui/BulkImportActivity;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    iget-object v1, p0, Lcom/metamoji/ui/BulkImportActivity$2;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    if-eqz v0, :cond_0

    .line 185
    :try_start_1
    invoke-static {v1}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$mexportFiles(Lcom/metamoji/ui/BulkImportActivity;)V

    return-void

    .line 187
    :cond_0
    invoke-static {v1}, Lcom/metamoji/ui/BulkImportActivity;->-$$Nest$mimportAtdocs(Lcom/metamoji/ui/BulkImportActivity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 192
    throw v0

    :catch_0
    move-exception v0

    .line 190
    const-string v1, "bulk import/export error."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
