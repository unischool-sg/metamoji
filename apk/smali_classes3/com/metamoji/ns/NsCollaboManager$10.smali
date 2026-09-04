.class Lcom/metamoji/ns/NsCollaboManager$10;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->handleLoginRoomResult(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1260
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$10;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 1

    .line 1264
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$10;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->executeConnectRoomAfterAction(Z)V

    return-void
.end method
