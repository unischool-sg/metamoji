.class Lcom/metamoji/ns/NsCollaboCommand$24$1;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand$24;->action(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboCommand$24;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboCommand$24;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1968
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$24$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1972
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$24$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$24;

    iget-boolean v0, v0, Lcom/metamoji/ns/NsCollaboCommand$24;->val$isShareNote:Z

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->createAndEditNormalDocumentFromCollaboFile(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1974
    const-string v1, "createAndEditNormalDocumentFromCollaboFile"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1975
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    return-void
.end method
