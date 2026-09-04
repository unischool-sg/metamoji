.class Lcom/metamoji/ns/NsCollaboManager$45$1;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager$45;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/NsCollaboManager$45;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager$45;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4452
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$45$1;->this$1:Lcom/metamoji/ns/NsCollaboManager$45;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4455
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$45$1;->this$1:Lcom/metamoji/ns/NsCollaboManager$45;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboManager$45;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$45$1;->this$1:Lcom/metamoji/ns/NsCollaboManager$45;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboManager$45;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->hideProgressViewForKey(Ljava/lang/String;)V

    return-void
.end method
