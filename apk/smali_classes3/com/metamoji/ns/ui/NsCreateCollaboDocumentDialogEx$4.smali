.class Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$4;
.super Ljava/lang/Object;
.source "NsCreateCollaboDocumentDialogEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 466
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$4;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 469
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$4;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    invoke-static {p1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->-$$Nest$mhandleAppendButtonTap(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;)V

    return-void
.end method
