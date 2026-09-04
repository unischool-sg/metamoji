.class Lcom/metamoji/ns/ui/NsCollaboWaitView$1;
.super Ljava/lang/Object;
.source "NsCollaboWaitView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V
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

    .line 189
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView$1;->this$0:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView$1;->this$0:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_messageText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView$1;->this$0:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_messageText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView$1;->this$0:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    iget v1, v1, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_messageId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
