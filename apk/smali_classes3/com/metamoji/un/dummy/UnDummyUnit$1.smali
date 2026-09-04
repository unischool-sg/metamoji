.class Lcom/metamoji/un/dummy/UnDummyUnit$1;
.super Ljava/lang/Object;
.source "UnDummyUnit.java"

# interfaces
.implements Lcom/metamoji/df/sprite/TapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/dummy/UnDummyUnit;->init(Lcom/metamoji/df/controller/ControllerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/dummy/UnDummyUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/dummy/UnDummyUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/metamoji/un/dummy/UnDummyUnit$1;->this$0:Lcom/metamoji/un/dummy/UnDummyUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tap(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/metamoji/un/dummy/UnDummyUnit$1;->this$0:Lcom/metamoji/un/dummy/UnDummyUnit;

    invoke-static {v0, p1}, Lcom/metamoji/un/dummy/UnDummyUnit;->-$$Nest$monTapped(Lcom/metamoji/un/dummy/UnDummyUnit;Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method
