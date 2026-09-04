.class Lcom/metamoji/df/sprite/Viewport$6;
.super Ljava/lang/Object;
.source "Viewport.java"

# interfaces
.implements Lcom/metamoji/df/sprite/AllInOneGesture$TapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/Viewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/sprite/Viewport;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/Viewport;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 471
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$6;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tap(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$6;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgettapListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/TapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/TapListener;->tap(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method
