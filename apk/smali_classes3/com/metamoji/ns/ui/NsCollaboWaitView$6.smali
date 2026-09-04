.class Lcom/metamoji/ns/ui/NsCollaboWaitView$6;
.super Ljava/lang/Object;
.source "NsCollaboWaitView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboWaitView;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboWaitView;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboWaitView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 371
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView$6;->this$0:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 374
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView$6;->this$0:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->handleCancelButtonTap()V

    return-void
.end method
