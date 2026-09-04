.class Lcom/metamoji/ns/NsCollaboManager$15$1;
.super Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;
.source "NsCollaboManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/NsCollaboManager$15;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager$15;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1628
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$15$1;->this$1:Lcom/metamoji/ns/NsCollaboManager$15;

    invoke-direct {p0}, Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doit()V
    .locals 1

    .line 1631
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$15$1;->this$1:Lcom/metamoji/ns/NsCollaboManager$15;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboManager$15;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->reloginRoomSocketInner()V

    return-void
.end method
