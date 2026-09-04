.class Lcom/metamoji/df/sprite/AllInOneGesture$HoldTimeoutJob;
.super Ljava/lang/Object;
.source "AllInOneGesture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/AllInOneGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoldTimeoutJob"
.end annotation


# instance fields
.field private gesture:Lcom/metamoji/df/sprite/AllInOneGesture;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/AllInOneGesture;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$HoldTimeoutJob;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$HoldTimeoutJob;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    return-void
.end method

.method public run()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$HoldTimeoutJob;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    if-eqz v0, :cond_0

    .line 75
    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$mfireHoldTimeout(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    .line 76
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$HoldTimeoutJob;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$mcancelHoldTimeout(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$HoldTimeoutJob;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    :cond_0
    return-void
.end method
