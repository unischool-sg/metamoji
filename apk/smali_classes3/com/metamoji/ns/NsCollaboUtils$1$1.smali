.class Lcom/metamoji/ns/NsCollaboUtils$1$1;
.super Ljava/lang/Object;
.source "NsCollaboUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboUtils$1;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboUtils$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboUtils$1$1;->this$0:Lcom/metamoji/ns/NsCollaboUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 160
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboUtils$1$1;->this$0:Lcom/metamoji/ns/NsCollaboUtils$1;

    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboUtils$1;->val$action:Lcom/metamoji/ns/INsCollaboAction;

    if-eqz p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboUtils$1$1;->this$0:Lcom/metamoji/ns/NsCollaboUtils$1;

    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboUtils$1;->val$action:Lcom/metamoji/ns/INsCollaboAction;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    :cond_0
    return-void
.end method
