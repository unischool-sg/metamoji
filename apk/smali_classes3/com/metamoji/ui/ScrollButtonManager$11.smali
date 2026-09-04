.class Lcom/metamoji/ui/ScrollButtonManager$11;
.super Ljava/lang/Object;
.source "ScrollButtonManager.java"

# interfaces
.implements Lcom/metamoji/df/sprite/TapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/ScrollButtonManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/ScrollButtonManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ScrollButtonManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 687
    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$11;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tap(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$11;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {v0}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_hideConditions(Lcom/metamoji/ui/ScrollButtonManager;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$11;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {v0, p1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$mcheckHitArea(Lcom/metamoji/ui/ScrollButtonManager;Lcom/metamoji/df/sprite/TouchEvent;)V

    :cond_0
    return-void
.end method
