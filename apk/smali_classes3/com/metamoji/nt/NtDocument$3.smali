.class Lcom/metamoji/nt/NtDocument$3;
.super Ljava/lang/Object;
.source "NtDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtDocument;->saveModels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtDocument;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDocument;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1290
    iput-object p1, p0, Lcom/metamoji/nt/NtDocument$3;->this$0:Lcom/metamoji/nt/NtDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1294
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument$3;->this$0:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1296
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->onStateDataSaving()V

    .line 1297
    iget-object v1, p0, Lcom/metamoji/nt/NtDocument$3;->this$0:Lcom/metamoji/nt/NtDocument;

    invoke-static {v1}, Lcom/metamoji/nt/NtDocument;->access$001(Lcom/metamoji/nt/NtDocument;)V

    .line 1298
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->onStateDataSaved()V

    return-void

    .line 1300
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument$3;->this$0:Lcom/metamoji/nt/NtDocument;

    invoke-static {v0}, Lcom/metamoji/nt/NtDocument;->access$101(Lcom/metamoji/nt/NtDocument;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1303
    const-string v1, "NtDocument.saveModels"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
