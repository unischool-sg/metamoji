.class Lcom/metamoji/df/sprite/Viewport$12;
.super Ljava/lang/Object;
.source "Viewport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/df/sprite/Viewport;->setZoomScale(F)V
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

    .line 784
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$12;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$12;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetviewportListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/ViewportListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/sprite/ViewportListener;->zoomChanged()V

    return-void
.end method
