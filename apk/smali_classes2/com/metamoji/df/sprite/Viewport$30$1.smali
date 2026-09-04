.class Lcom/metamoji/df/sprite/Viewport$30$1;
.super Ljava/lang/Object;
.source "Viewport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/df/sprite/Viewport$30;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/df/sprite/Viewport$30;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/Viewport$30;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1381
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$30$1;->this$1:Lcom/metamoji/df/sprite/Viewport$30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$30$1;->this$1:Lcom/metamoji/df/sprite/Viewport$30;

    iget-object v0, v0, Lcom/metamoji/df/sprite/Viewport$30;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$mclearGlimpse(Lcom/metamoji/df/sprite/Viewport;)V

    return-void
.end method
