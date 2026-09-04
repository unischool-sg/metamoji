.class Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16$1$1;
.super Ljava/lang/Object;
.source "NsCreateCollaboDocumentDialogEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16$1;->action(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16$1;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1205
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16$1$1;->this$2:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1208
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16$1$1;->this$2:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16$1;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16$1;->this$1:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$16;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    invoke-static {v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->-$$Nest$mhandleAppendButtonTap(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V

    return-void
.end method
