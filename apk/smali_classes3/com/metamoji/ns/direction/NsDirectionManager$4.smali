.class Lcom/metamoji/ns/direction/NsDirectionManager$4;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->detachBoothGracefully(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

.field final synthetic val$boothID:Ljava/lang/String;

.field final synthetic val$onCompleted:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 425
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$4;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$4;->val$boothID:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$4;->val$onCompleted:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$4;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$4;->val$boothID:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$4;->val$onCompleted:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ns/direction/NsDirectionManager;->detachBoothViolently(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 429
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$4;->val$onCompleted:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
