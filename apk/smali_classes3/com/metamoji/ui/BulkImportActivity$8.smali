.class Lcom/metamoji/ui/BulkImportActivity$8;
.super Ljava/lang/Object;
.source "BulkImportActivity.java"

# interfaces
.implements Lcom/metamoji/nt/INtProgressUI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/BulkImportActivity;
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

    .line 620
    iput-object p1, p0, Lcom/metamoji/ui/BulkImportActivity$8;->this$0:Lcom/metamoji/ui/BulkImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    return-void
.end method

.method public progress(F)V
    .locals 2

    .line 634
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/BulkImportActivity$8$2;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/BulkImportActivity$8$2;-><init>(Lcom/metamoji/ui/BulkImportActivity$8;F)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setProgressText(Ljava/lang/String;)V
    .locals 2

    .line 623
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/BulkImportActivity$8$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/BulkImportActivity$8$1;-><init>(Lcom/metamoji/ui/BulkImportActivity$8;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
