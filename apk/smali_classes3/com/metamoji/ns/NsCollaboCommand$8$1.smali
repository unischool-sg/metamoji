.class Lcom/metamoji/ns/NsCollaboCommand$8$1;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand$8;->onDocumentCompleted(ZLjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboCommand$8;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboCommand$8;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 582
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 2

    .line 585
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;-><init>(Lcom/metamoji/ns/NsCollaboCommand$8$1;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
