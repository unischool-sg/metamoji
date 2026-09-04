.class Lcom/metamoji/un/text/UnTextUnit$3$1;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/un/text/UnTextUnit$3;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1528
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$3$1;->this$1:Lcom/metamoji/un/text/UnTextUnit$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1531
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$3$1;->this$1:Lcom/metamoji/un/text/UnTextUnit$3;

    iget-object v0, v0, Lcom/metamoji/un/text/UnTextUnit$3;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->requestKillFocus()V

    return-void
.end method
