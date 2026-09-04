.class Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16$1;
.super Ljava/lang/Object;
.source "NsCreateCollaboDocumentDialogEx.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1201
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16$1;->this$1:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 1

    .line 1205
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16$1$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16$1$1;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16$1;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
