.class Lcom/metamoji/ns/ui/NsCollaboWaitView$2$1;
.super Ljava/lang/Object;
.source "NsCollaboWaitView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboWaitView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/ui/NsCollaboWaitView$2;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboWaitView$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView$2$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboWaitView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 214
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView$2$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboWaitView$2;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboWaitView$2;->this$0:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->handleCancelButtonTap()V

    return-void
.end method
