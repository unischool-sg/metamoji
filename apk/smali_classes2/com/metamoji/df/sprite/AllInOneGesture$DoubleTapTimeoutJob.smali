.class Lcom/metamoji/df/sprite/AllInOneGesture$DoubleTapTimeoutJob;
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
    name = "DoubleTapTimeoutJob"
.end annotation


# instance fields
.field private gesture:Lcom/metamoji/df/sprite/AllInOneGesture;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/AllInOneGesture;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$DoubleTapTimeoutJob;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$DoubleTapTimeoutJob;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    return-void
.end method

.method public run()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$DoubleTapTimeoutJob;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    if-eqz v0, :cond_0

    .line 119
    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$mfireDoubleTapTimeout(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    .line 120
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$DoubleTapTimeoutJob;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$mcancelDoubleTapTimeout(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$DoubleTapTimeoutJob;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    :cond_0
    return-void
.end method
