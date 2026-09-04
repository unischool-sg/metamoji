.class Lcom/metamoji/ns/direction/NsDirectionManager$14;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

.field final synthetic val$boothID:Ljava/lang/String;

.field final synthetic val$data:[B

.field final synthetic val$disposable:Z

.field final synthetic val$ripOffSize:Ljava/lang/String;

.field final synthetic val$sendBack:Z


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;[BLjava/lang/String;ZZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
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

    .line 832
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$14;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$14;->val$data:[B

    iput-object p3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$14;->val$boothID:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/metamoji/ns/direction/NsDirectionManager$14;->val$disposable:Z

    iput-boolean p5, p0, Lcom/metamoji/ns/direction/NsDirectionManager$14;->val$sendBack:Z

    iput-object p6, p0, Lcom/metamoji/ns/direction/NsDirectionManager$14;->val$ripOffSize:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 836
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$14;->val$data:[B

    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$14;->val$boothID:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$14;->val$disposable:Z

    iget-boolean v4, p0, Lcom/metamoji/ns/direction/NsDirectionManager$14;->val$sendBack:Z

    iget-object v5, p0, Lcom/metamoji/ns/direction/NsDirectionManager$14;->val$ripOffSize:Ljava/lang/String;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "0"

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ns/NsCollaboManager;->postDirection([BLjava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    return-void
.end method
