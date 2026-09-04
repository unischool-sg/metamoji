.class Lcom/metamoji/df/model/StateData$StateDataBlockInfo;
.super Ljava/lang/Object;
.source "StateData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/model/StateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateDataBlockInfo"
.end annotation


# instance fields
.field public blockSize:J

.field public position:J

.field final synthetic this$0:Lcom/metamoji/df/model/StateData;


# direct methods
.method private constructor <init>(Lcom/metamoji/df/model/StateData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->this$0:Lcom/metamoji/df/model/StateData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/df/model/StateData;Lcom/metamoji/df/model/StateData-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;-><init>(Lcom/metamoji/df/model/StateData;)V

    return-void
.end method
