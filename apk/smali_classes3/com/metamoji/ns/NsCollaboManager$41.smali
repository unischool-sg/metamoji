.class Lcom/metamoji/ns/NsCollaboManager$41;
.super Ljava/util/HashMap;
.source "NsCollaboManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->getDistributeCommandInfo()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4035
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$41;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "distributeCommand"

    iget-object v1, p1, Lcom/metamoji/ns/NsCollaboManager;->m_distributeCommand:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ns/NsCollaboManager$41;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4036
    const-string v0, "distributeAddressArray"

    iget-object v1, p1, Lcom/metamoji/ns/NsCollaboManager;->m_distributeAddressArray:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ns/NsCollaboManager$41;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4037
    const-string v0, "distributePackage"

    iget-object v1, p1, Lcom/metamoji/ns/NsCollaboManager;->m_distributePackage:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ns/NsCollaboManager$41;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4038
    const-string v0, "distributeClass"

    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboManager;->m_distributeClass:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ns/NsCollaboManager$41;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
